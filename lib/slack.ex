defmodule Exslack.Slack do
  @moduledoc """
  A client for interacting with Slack's WSS API.
  """

  def login(token) do
    IO.puts("Logging in with given token #{token}")
  end
end
