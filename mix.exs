defmodule MyApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_app_project,
      escript: [main_module: MyApp.CLI],
      test_coverage: [tool: :covertool],
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :logger,
        :runtime_tools
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.0.0-rc.7", only: [:dev], runtime: false},
      {:covertool, "~> 2.0.2", only: :test}
    ]
  end
end
