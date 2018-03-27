defmodule GadgetCo.PageController do
  use GadgetCo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
