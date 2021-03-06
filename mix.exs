defmodule Scaffolder.MixProject do
  use Mix.Project

  def project do
    [
      app: :scaffolder,
      version: "0.1.0",
      elixir: "~> 1.9",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Scaffolder",
      source_url: "https://github.com/abiwinanda/scaffolder"
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
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Scaffolder allows you to easily scaffold folder structure using an elixir map. It also allows
    you to generate a file. By default all folders or files generated by Scaffolder will be created
    under lib folder. Behind the scene, Scaffolder implement DFS to scaffold the folders and files."
  end

  defp package() do
    [
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/abiwinanda/scaffolder"}
    ]
  end
end
