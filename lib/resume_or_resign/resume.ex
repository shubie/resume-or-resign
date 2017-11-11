defmodule ResumeOrResign.Resume do

  def collect do
      receive do
          {:resume , from} ->
              IO.puts "I am sick and receiving treatment ---->"
              :timer.sleep 1000
              send(from, {:so,self()})
          {:so , from} ->
              IO.puts "<---- Shioooh! I resign then"
              :timer.sleep 1000
              send(from, {:resign,self()})
          {:resign , from} ->
              IO.puts "If I tear you slap ---->"
              :timer.sleep 1000
              send(from, {:slap,self()})
          {:slap , from} ->
              IO.puts "<---- Na wa 0! You must resume then"
              :timer.sleep 1000
              send(from, {:resume,self()})
          _other  ->
              IO.puts "<---- hu! I didn't see any slap"

      end
      collect()
  end

  def goes_to_london(list) do
    list
    |> Enum.each(fn x -> IO.puts x <> " Goes to London"  end)
  end

end
