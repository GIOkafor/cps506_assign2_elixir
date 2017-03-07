defmodule Assign2 do
  @moduledoc """
  Snakes and Ladders game in Elixir for Assign2.
  """

  @doc """
  This multiplies two numbers

  ## Examples

      iex> Assign2.multiply(2,3)
      6
  """

  def multiply(a, b) do
    a * b
  end

  @doc """
  This reads from string

  ## Examples

      iex> Assign2.readFrom("abc")
      "abc"
  """

  def readFrom(a) do
    a 
  end

  @doc """
  This formats the game object as a string

  ## Examples

      iex> Assign2.print("abc")
      "abc"
  """

  def print(gameObj) do
    gameObj
  end 


  @doc """
  This specifies the size of the board in columns and rows

  ## Examples

      iex> Assign2.board(2,3)
      {:board, 2, 3}
  """

  def board(a, b) do
    {:board, a, b}
  end

  @doc """
  Specifies the number of players involved in the game

  ## Examples

      iex> Assign2.players(2)
      'AB'
  """

  def players(num) do
    symbols = ['A','B','C','D','E','F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    assignSymbol(num, symbols,[])
  end
  def assignSymbol(0, [head|tail], players) do
    players
  end
  def assignSymbol(num, [head|tail], players) do
    assignSymbol(num - 1, tail, players++head)
  end
  
  @doc """
  Specifies the sequence of dice rolls to be repeated indefinitely

  ## Examples

      iex> Assign2.dice([2,1,2,2,2])
      [2,1,2,2,2]
  """
  def dice(move) do
    move
  end


  @doc """
  Creates ladder on board

  ## Examples

      iex> Assign2.ladder(2, 1)
      {:ladder, 2, 1}
  """
  def ladder(start, fin) do
    {:ladder, start, fin}
  end

  @doc """
  Creates snake on the board

  ## Examples

      iex> Assign2.snake(2, 1)
      {:snake, 2, 1}
  """
  def snake(start, fin) do
    {:snake, start, fin}
  end

  @doc """
  Creates a powerup on the board

  ## Examples

      iex> Assign2.powerup("escalator", 2, 1)
      {:escalator, 2, 1}

  ## Examples

      iex> Assign2.powerup("antivenom", 2, 1)
      {:antivenom, 2, 1}

  ## Examples

      iex> Assign2.powerup("double", 2, 1)
      {:double, 2, 1}
  """
  def powerup(type, start, fin) do
    cond do
      type == "escalator" -> 
        escalator(start, fin)
      type == "antivenom" -> 
        antivenom(start, fin)
      type == "double" -> 
        double(start, fin)
    end
  end
  def escalator(s, f) do
    {:escalator, s, f}
  end
  def antivenom(s, f) do
    {:antivenom, s, f}
  end
  def double(s, f) do
    {:double, s, f}
  end

  @doc """
  Plays the specified number of turns or until a player wins the game

  ## Examples

      iex> Assign2.turns(10)
      {:turns, 10}
  """
  def turns(num) do
    {:turns, num}
  end
end