defmodule TicketTrackerWeb.PageController do
  use TicketTrackerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
