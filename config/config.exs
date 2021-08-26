# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :first_elixir_example,
  ecto_repos: [FirstElixirExample.Repo]

# Configures the endpoint
config :first_elixir_example, FirstElixirExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mZRds3chz8bCCkmsP2jM+0HzBIPH8zmK9QXXB4n2hLO8FS/s2Zuj51Alm6m1BFUR",
  render_errors: [view: FirstElixirExampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FirstElixirExample.PubSub,
  live_view: [signing_salt: "PJKJGosS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
