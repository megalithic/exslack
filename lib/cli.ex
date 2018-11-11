defmodule Exslack.CLI do
  @moduledoc """
  A command-line interface for interacting with Slack.
  Mostly used to issue basic commands to a token-authorized slack instance.
  """

  alias Exslack.Slack

  def main(args) do
    args |> parse_args |> process_args
  end

  def parse_args(args) do
    {params, _, _} = OptionParser.parse(args, switches: [help: :boolean])
    params
  end

  def process_args(help: true) do
    print_help_message()
  end

  def process_args(_) do
    IO.puts("Exslack booted up..")
    print_help_message()
    receive_command()
  end

  @commands %{
    "quit" => "Quits Exslack",
    "login" => "Logs in to slack using an app token or legacy token"
  }

  defp receive_command(slack \\ nil) do
    IO.gets("> ")
    |> String.trim()
    |> String.downcase()
    |> String.split(" ")
    |> IO.inspect()
    |> execute_command(slack)
  end

  defp execute_command(["login" | params], _slack) do
    # {token} = process_args()
    token = 1

    case Slack.login(token) do
      {:ok, slack} ->
        IO.puts("logged in and got a thing: #{inspect(slack)}")

      {:error, message} ->
        IO.puts("Oh snap! We got an error trying to log in: #{message}")
    end
  end

  defp execute_command(["quit"], _slack) do
    IO.puts("\nBye.")
  end

  defp execute_command(_unknown, slack) do
    IO.puts("\nOh snap! I dunno know what to do with that command.")
    print_help_message()

    receive_command(slack)
  end

  defp process_place_params(params) do
    [x, y, facing] = params |> Enum.join("") |> String.split(",") |> Enum.map(&String.trim/1)
    {String.to_integer(x), String.to_integer(y), String.to_atom(facing)}
  end

  defp print_help_message do
    IO.puts("\nExslack can do the following things:\n")

    @commands
    |> Enum.map(fn {command, description} -> IO.puts("  #{command} - #{description}") end)

    IO.puts("")
  end
end
