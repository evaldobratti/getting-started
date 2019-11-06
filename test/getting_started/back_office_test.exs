defmodule GettingStarted.BackOfficeTest do
  use GettingStarted.DataCase

  alias GettingStarted.BackOffice

  describe "users" do
    alias GettingStarted.BackOffice.User

    @valid_attrs %{birthdate: ~D[2010-04-17], name: "some name"}

    def user_fixture(attrs \\ %{}) do
      {:ok, user} =
        attrs
        |> Enum.into(@valid_attrs)
        |> BackOffice.create_user()

      user
    end

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert BackOffice.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert BackOffice.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      assert {:ok, %User{} = user} = BackOffice.create_user(@valid_attrs)
      assert user.birthdate == ~D[2010-04-17]
      assert user.name == "some name"
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = BackOffice.change_user(user)
    end
  end
end
