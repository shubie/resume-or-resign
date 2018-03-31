# ResumeOrResign

A simple application to demonstrate Elixir and Erlang/OTP Fault tolerance and Concurrency features. GDG North Central Presentation on  LET IT CRASH - Techniques for Building Highly Available Systems



**Ensure you have Elixir installed https://elixir-lang.org/install.html **


## Installation
```
$ git clone https://github.com/shubie/resume-or-resign
$ cd resume-or-resign
$ mix do deps.get
$ iex -S mix 

```

You can play around
You can play around

```

$ {:ok, pid} = ResumeOrResign.Protest.start_link

$ spawn(ResumeOrResign.Resume,:goes_to_london, [["Buhari"]] )

$ buhari = spawn(ResumeOrResign.Resume, :protest, []) 
$ charley = spawn(ResumeOrResign.Resume, :protest, []) 
$ send(buhari, {:resume,charley})

```
GENSERVER EXAMPLES
```

$ {:ok, pid} = ResumeOrResign.Protest.start_link

$ ResumeOrResign.Protest.i_wan_protest(pid, "Charley Boy")
$ ResumeOrResign.Protest.i_wan_protest(pid, "Tuface Idibia")
$ ResumeOrResign.Protest.i_wan_protest(pid, "Dele Ayenugba")
$ ResumeOrResign.Protest.i_wan_protest(pid, "Jim Iyke")
$ ResumeOrResign.Protest.who_buhari_don_epp(pid, "Aisha Yesufu")
$ ResumeOrResign.Protest.who_buhari_don_epp(pid, "Ansari Dokumbo")

$ ResumeOrResign.Protest.troublemakers(pid)

$ ResumeOrResign.Protest.who_protest_epp(pid, "Tuface Idibia")

$ ResumeOrResign.Protest.troublemakers(pid)

```
If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `resume_or_resign` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:resume_or_resign, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/resume_or_resign](https://hexdocs.pm/resume_or_resign).

