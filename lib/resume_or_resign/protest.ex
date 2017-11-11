defmodule ResumeOrResign.Protest do
  use GenServer

  #client APIs

  def start_link(options \\ []) do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def i_wan_protest(pid, troublemaker) do
    GenServer.call(pid, {:add, troublemaker})
  end

  def who_buhari_don_epp(pid, troublemaker) do
    GenServer.cast(pid, {:add, troublemaker})
  end

  def who_protest_epp(pid, sharp_guy) do
    GenServer.cast(pid, {:remove, sharp_guy})
  end

  def troublemakers(pid) do
    GenServer.call(pid, {:read})
  end

  # Server API
  def init(:ok) do
    {:ok, []}
  end

  def handle_call({:read}, _from, troublemakers) do
    {:reply, troublemakers, troublemakers}
  end

  def handle_call({:add, troublemaker}, _from, state) do
    {:reply, :ok, state ++ [troublemaker]}
  end

  def handle_cast({:add, troublemaker}, list) do
    {:noreply, list ++ [troublemaker]}
  end

  def handle_cast({:remove, sharp_guy}, troublemakers) do
    {:noreply, List.delete(troublemakers, sharp_guy)}
  end

end


