defmodule Exslack.SlackTest do
  alias Exslack.Slack
  use ExUnit.Case

  test ".login" do
    token = 123
    assert {:ok, %{status: :success}} = Slack.login(token)
  end
end
