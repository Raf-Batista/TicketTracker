defmodule TicketTrackerWeb.AuthController do 
    use TicketTrackerWeb, :controller

    alias TicketTracker.Accounts
    alias TicketTracker.Router.Helpers, as: Routes
  
    def callback(%{assigns: %{ueberauth_failure: _error}} = conn, _params) do
      conn
      |> put_flash(:error, "Failed to authenticate.")
      |> redirect(to: "/")
    end

    def callback(%{assigns: %{ueberauth_auth: user}} = conn, params) do 
      IO.inspect(params)
    #   user_params = %{
    #     name: user.info.name, 
    #       email: user.info.email, 
    #       provider: to_string(user.provider), 
    #       token: user.extra.raw_info.token.access_token
    #     }

    #   user_changeset = Accounts.User.changeset(%Accounts.User{}, user_params)
    
    #   case find_or_create_user(user_changeset) do 
    #     {:ok, user} -> 
    #       conn
    #       |> put_flash(:info, "Welcome")
    #       |> put_session(:user_id, user.id)
    #       |> redirect(to: Routes.topic_path(conn, :index))
    #     {:error, _reason} -> 
    #       conn 
    #       |> put_flash(:info, "Error, Error")
    #       |> redirect(to: Routes.page_path(conn, :index))
    #   end     
      
    end 

    # def signout(conn, _params) do 
    #   conn
    #   |> configure_session(drop: true)
    #   |> put_flash(:info, "You have successfully logged out")
    #   |> redirect(to: Routes.page_path(conn, :index))
    # end 

    # defp find_or_create_user(changeset) do 
    #   case Accounts.get_user_by(email: changeset.changes.email) do
    #     nil -> Accounts.create_user(changeset.changes) 
    #     user -> {:ok, user}
    #   end
    # end 
end 