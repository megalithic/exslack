defmodule Exslack.Slack do
  @moduledoc """
  A client for interacting with Slack's WSS API.
  """

  def login(token) do
    IO.puts("Logging in with the given token #{token}")

    # def initiate_connection(token, retries=3):
    #     return SlackRequest(token,
    #                         'rtm.start',
    #                         {"batch_presence_aware": 1},
    #                         retries=retries)
  end
end
