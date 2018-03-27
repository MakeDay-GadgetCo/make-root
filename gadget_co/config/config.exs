# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gadget_co,
  ecto_repos: [GadgetCo.Repo]

# Configures the endpoint
config :gadget_co, GadgetCo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZH8FjH6e8EflV0hndEKMpViq7M9R8GywHD9uJAlxIIzp+jrrDXMMCI0/pN+W5lWw",
  render_errors: [view: GadgetCo.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GadgetCo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
