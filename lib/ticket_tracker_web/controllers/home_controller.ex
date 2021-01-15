defmodule TicketTrackerWeb.HomeController do
  use TicketTrackerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
