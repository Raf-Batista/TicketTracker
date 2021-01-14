# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ticket_tracker,
  ecto_repos: [TicketTracker.Repo]

# Configures the endpoint
config :ticket_tracker, TicketTrackerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lOIjVNleBmOdKTZOJI/bkVrRilPyqzn4IfMfwqCbSpO4tEXSTGw+/3pKK42MFqjC",
  render_errors: [view: TicketTrackerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TicketTracker.PubSub,
  live_view: [signing_salt: "zEnteSpM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
