defmodule GettingStarted.Repo do
  use Ecto.Repo,
    otp_app: :getting_started,
    adapter: Ecto.Adapters.Postgres
end
