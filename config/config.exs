# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :hubz, Hubz.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "hubz_ecto",
  username: "florian",
  hostname: "localhost"

config :hubz,
  ecto_repos: [Hubz.Repo]

config :commanded,
  event_store_adapter: Commanded.EventStore.Adapters.EventStore

config :eventstore, EventStore.Storage,
  database: "hubz_event_store",
  username: "florian",
  hostname: "localhost",
  pool_size: 10,
  column_data_type: "jsonb",
  serializer: EventStore.JsonbSerializer,
  types: EventStore.PostgresTypes

config :eventstore, column_data_type: "jsonb"

config :commanded_scheduler, Commanded.Scheduler.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "hubz_scheduler",
  username: "florian",
  hostname: "localhost",
  pool_size: 1

config :commanded_ecto_projections,
  repo: Hubz.Projections.Repo

import_config "#{Mix.env()}.exs"
