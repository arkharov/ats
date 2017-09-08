# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ats,
  ecto_repos: [Ats.Repo]

# Configures the endpoint
config :ats, AtsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vXEH8kOs29B+xobLFACway1srTYBKYOvi7MLOCw3BBa9b/lz2eXfA045rkwcYOst",
  render_errors: [view: AtsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ats.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
