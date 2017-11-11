defmodule ResumeOrResign do
  @moduledoc """
  Documentation for ResumeOrResign.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ResumeOrResign.hello
      :world

  """
  def hello do
    :world
  end

  def start_protest do
    IO.puts  "I am the Area Father, Buhari must resume or resign"
    buhari = spawn(ResumeOrResign.Resume, :collect, [])
    charley = spawn(ResumeOrResign.Resume, :collect, [])
    send(buhari,{:slap, charley})
  end
  
end
