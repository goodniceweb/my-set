class MySet
  def initialize
    @data = []
  end

  def add(value)
    return if contains?(value)

    @data.push(value)
  end

  def empty?
    @data.size.zero?
  end

  def contains?(value)
    @data.include?(value)
  end

  def length
    @data.size
  end

  def remove(value)
    @data.delete(value)
  end

  def to_a
    @data
  end
end
