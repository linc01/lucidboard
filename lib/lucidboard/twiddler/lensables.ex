defimpl Lensable, for: Lucidboard.Board do
  def getter(s, x), do: Map.get(s, x, {:error, {:lens, :bad_path}})
  def setter({:error, {:lens, :bad_path}} = e), do: e

  def setter(s, x, f) do
    if Map.has_key?(s, x), do: Map.put(s, x, f), else: s
  end
end

defimpl Lensable, for: Lucidboard.Column do
  def getter(s, x), do: Map.get(s, x, {:error, {:lens, :bad_path}})
  def setter({:error, {:lens, :bad_path}} = e), do: e

  def setter(s, x, f) do
    if Map.has_key?(s, x), do: Map.put(s, x, f), else: s
  end
end

defimpl Lensable, for: Lucidboard.Pile do
  def getter(s, x), do: Map.get(s, x, {:error, {:lens, :bad_path}})
  def setter({:error, {:lens, :bad_path}} = e), do: e

  def setter(s, x, f) do
    if Map.has_key?(s, x), do: Map.put(s, x, f), else: s
  end
end

defimpl Lensable, for: Lucidboard.Card do
  def getter(s, x), do: Map.get(s, x, {:error, {:lens, :bad_path}})
  def setter({:error, {:lens, :bad_path}} = e), do: e

  def setter(s, x, f) do
    if Map.has_key?(s, x), do: Map.put(s, x, f), else: s
  end
end
