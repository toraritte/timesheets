# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :timesheets,
  ecto_repos: [Timesheets.Repo]

# Configures the endpoint
config :timesheets, TimesheetsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WXjtA4+17dHYh2gnvNBe8RVPWELdauFRr3b9BtKhjwhGxpOMWlTcSH68eQ/ag/vk",
  render_errors: [view: TimesheetsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Timesheets.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
