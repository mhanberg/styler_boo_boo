defmodule StylerBooBoo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      StylerBooBooWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: StylerBooBoo.PubSub},
      # Start Finch
      {Finch, name: StylerBooBoo.Finch},
      # Start the Endpoint (http/https)
      StylerBooBooWeb.Endpoint
      # Start a worker by calling: StylerBooBoo.Worker.start_link(arg)
      # {StylerBooBoo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: StylerBooBoo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    StylerBooBooWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
