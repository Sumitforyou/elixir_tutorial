defmodule ElixirTutorial.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_tutorial,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirTutorial.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:cowboy, "~> 1.1"},
      {:plug, "~> 1.4"}
    ]
  end
end
