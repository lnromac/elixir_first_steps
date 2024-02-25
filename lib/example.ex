defmodule Example do
  use Application

  @constString "hey, don't change me!"

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    IO.puts(4)
    IO.puts(:hello)
    IO.puts(:"Hello, Leo!")
    IO.puts(@constString)

    name = "Leandro"
    status = Enum.random([:gold, :silver, :bronze, :"not a member"])

    # if status == :gold do
    #   IO.puts("Welcome to the fancy lounge, #{name}!")
    # else
    #   IO.puts("Get lost")
    # end

    case status do
      :gold -> IO.puts("Welcome to the fancy lounge, #{name}!")
      :silver -> IO.puts("Welcome to the regular lounge, #{name}!")
      :bronze -> IO.puts("Get lost")
      :"not a member" -> IO.puts("Get subscribed")
    end
  end
end
