defmodule Hubz.InMemoryCase do
  @moduledoc false

  use ExUnit.CaseTemplate

  require Logger

  alias Commanded.EventStore.Adapters.InMemory
  alias Commanded.Serialization.JsonSerializer

  setup do
    on_exit(fn ->
      :ok = Application.stop(:hubz)

      InMemory.reset!()

      {:ok, _apps} = Application.ensure_all_started(:hubz)
    end)
  end
end
