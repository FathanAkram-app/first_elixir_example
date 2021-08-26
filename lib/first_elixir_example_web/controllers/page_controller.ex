defmodule FirstElixirExampleWeb.PageController do
  use FirstElixirExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
