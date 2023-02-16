defmodule Bug.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Bug.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        country: "some country",
        name: "some name"
      })
      |> Bug.Accounts.create_user()

    user
  end
end
