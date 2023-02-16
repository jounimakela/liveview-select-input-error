defmodule Bug.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :country, :string

      timestamps()
    end
  end
end
