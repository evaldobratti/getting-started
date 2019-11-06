defmodule GettingStarted.Repo.Migrations.CreateSectors do
  use Ecto.Migration

  def change do
    create table(:sectors) do
      add :name, :string

      timestamps()
    end

  end
end
