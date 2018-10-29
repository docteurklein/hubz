defmodule Hubz.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      Hubz.Repo,
    ]

    opts = [strategy: :one_for_one, name: Hubz.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
