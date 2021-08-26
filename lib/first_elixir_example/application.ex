defmodule FirstElixirExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      FirstElixirExample.Repo,
      # Start the Telemetry supervisor
      FirstElixirExampleWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: FirstElixirExample.PubSub},
      # Start the Endpoint (http/https)
      FirstElixirExampleWeb.Endpoint
      # Start a worker by calling: FirstElixirExample.Worker.start_link(arg)
      # {FirstElixirExample.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FirstElixirExample.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    FirstElixirExampleWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
