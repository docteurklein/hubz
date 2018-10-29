defmodule Hubz.MixProject do
  use Mix.Project

  def project do
    [
      app: :hubz,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :logger,
        :eventstore,
      ],
      mod: {Hubz.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:commanded, "~> 0.17"},
      {:commanded_eventstore_adapter, "~> 0.4"},
      {:commanded_scheduler, "~> 0.1"},
      {:commanded_ecto_projections, "~> 0.7"},
      {:ecto, "~> 2.0"},
      {:postgrex, "~> 0.11"},
      {:poison, "~> 3.1 or ~> 4.0"},
    ]
  end
end
