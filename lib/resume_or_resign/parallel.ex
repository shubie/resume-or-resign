defmodule ResumeOrResign.Parallel do
    def pmap(collection, func) do
        collection
        |> Enum.map(&(Task.async(fn -> func.(&1) end)))
        |> Enum.map(&Task.await/1)
    end
end

# alias ResumeOrResign.Parallel, as: MyMap
# ResumeOrResign.Parallel.pmap 1..1000, &(&1 * &1)