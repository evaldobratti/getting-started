defmodule GettingStarted.BackOffice.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :birthdate, :date
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :birthdate])
  end
end
