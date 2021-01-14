defmodule TicketTracker.Repo do
  use Ecto.Repo,
    otp_app: :ticket_tracker,
    adapter: Ecto.Adapters.Postgres
end
