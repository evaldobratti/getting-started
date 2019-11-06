defmodule GettingStartedWeb.UserController do
  use GettingStartedWeb, :controller

  alias GettingStarted.BackOffice
  alias GettingStarted.BackOffice.User

  def index(conn, _params) do
    users = BackOffice.list_users()
    render(conn, "index.html", users: users)
  end

  def new(conn, _params) do
    changeset = BackOffice.change_user(%User{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"user" => user_params}) do
    case BackOffice.create_user(user_params) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "User created successfully.")
        |> redirect(to: Routes.user_path(conn, :show, user))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    user = BackOffice.get_user!(id)
    render(conn, "show.html", user: user)
  end

end
