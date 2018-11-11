defmodule Exslack.MixProject do
  use Mix.Project

  def project do
    [
      app: :exslack,
      version: "0.1.0",
      elixir: "~> 1.7",
      escript: [
        path: "build/exslack",
        main_module: Exslack.CLI
      ],
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.9.0-rc1", only: :dev, runtime: false},
      {:gun, "~> 1.3"},
      {:poison, "~> 3.1"},
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false},
      {:dialyxir, "~> 0.5", only: :dev, runtime: false}
    ]
  end
end
