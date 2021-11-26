require './classes/grid.rb'
require './classes/cells.rb'

#require '/classes/grid.rb'

class Main
  
  grid = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 1, 0, 0, 1, 0, 0, 0, 0],
    [0, 1, 1, 0, 0, 0, 0, 1, 0, 0],
    [0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
    [0, 0, 1, 0, 0, 0, 1, 1, 1, 0],
    [0, 1, 0, 1, 0, 0, 0, 1, 0, 0],
    [1, 0, 1, 0, 1, 0, 1, 0, 0, 0],
    [0, 0, 0, 1, 1, 0, 0, 0, 1, 0],
    [0, 0, 0, 0, 1, 0, 0, 0, 1, 0],
    [0, 0, 1, 0, 0, 1, 1, 0, 0, 0]
    ]
    
  grid2 = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    ]
  
  dibujo = Grid.new
  celulas = Cells.new
  puts "Dame el numero de filas:"
  fil = gets.to_i
  puts "Dame el numero de columnas:"
  col = gets.to_i
  if fil <= 10 && fil.positive? && col <= 10 && col.positive?
    dibujo.dibujar(grid, fil, col)
    puts
    celulas.generacion(grid, grid2, fil, col)
    puts
    dibujo.dibujar(grid2, fil, col)
  else
    puts "Haz ingresado valores incorrectos (solo se permiten iguales o menores a 10 y mayores a 0:) "
  end
end

