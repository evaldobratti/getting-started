defmodule GettingStartedWeb.PageController do
  use GettingStartedWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
