defmodule FirstElixirExampleWeb.ProjectView do
  use FirstElixirExampleWeb, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description]

  # def render("index.json", %{projects: projects}) do
  #   %{data: render_many(projects, ProjectView, "project.json")}
  # end

  # def render("show.json", %{project: project}) do
  #   %{data: render_one(project, ProjectView, "project.json")}
  # end

  # def render("project.json", %{project: project}) do
  #   %{id: project.id,
  #     title: project.title,
  #     description: project.description}
  # end
end
