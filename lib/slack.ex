defmodule Exslack.Slack do
  @moduledoc """
  A client for interacting with Slack's RTM API.
  """

  def login(token) do
    IO.puts("Logging in with the given token #{token}")
  end
end
