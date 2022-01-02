defmodule Mix.Tasks.Compiler do
  use Mix.Task

  @path "./lib/compiled"

  def run([file]) do
    File.mkdir(@path)

    File.write(
      "#{@path}/#{Path.rootname(file)}.ex",
      "use Rackex\n\n #{File.read!(file)}\n"
    )
  end
end
