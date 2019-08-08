defmodule UeberauthApple.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @url "https://github.com/KosyanMedia/ueberauth_apple"

  def project do
    [
      app: :ueberauth_apple,
      version: @version,
      name: "Ueberauth Apple Strategy",
      elixir: "~> 1.3",
      source_url: @url,
      package: package(),
      homepage_url: @url,
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      deps: deps(),
      docs: docs()
   ]
  end

  def application do
    [applications: [:logger, :oauth2, :ueberauth]]
  end

  defp deps do
    [
      {:oauth2, ">= 0.8.0"},
      {:ueberauth, "~> 0.4"},
      {:jose, "~> 1.0"},
      {:httpoison, "~> 0.7"},
      {:credo, "~> 0.8", only: [:dev, :test]},
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, "~> 0.3", only: :dev}
    ]
  end

  defp docs do
    [extras: ["README.md"]]
  end

  defp description do
    "An Uberauth strategy for Apple authentication."
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["KosyanMedia", "Nikita Bulatov"],
      licenses: ["MIT"],
      links: %{"GitHub": @url}
    ]
  end
end
