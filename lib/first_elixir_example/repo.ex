defmodule FirstElixirExample.Repo do
  use Ecto.Repo,
    otp_app: :first_elixir_example,
    adapter: Ecto.Adapters.Postgres
end
