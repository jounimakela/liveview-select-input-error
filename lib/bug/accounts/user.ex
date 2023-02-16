defmodule Bug.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  @countries ["Finland", "Other"]

  schema "users" do
    field :country, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :country])
    |> validate_required([:name, :country])
    |> validate_inclusion(:country, @countries)
  end

  def countries(), do: @countries
end
