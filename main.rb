require './classes/grid.rb'
require './classes/cells.rb'

#require '/classes/grid.rb'

class Main





  puts "Dame el numero de filas:"
  fil = gets.to_i
  puts "Dame el numero de columnas:"
  col = gets.to_i

  dibujo = Grid.new
  celulas = Cells.new

  if fil <= 10 && fil.positive? && col <= 10 && col.positive?
    dibujo.dibujar($grid, fil, col)
    puts
    celulas.generacion($grid, $grid2, fil, col)
    puts
    dibujo.dibujar($grid2, fil, col)
  else
    puts "Haz ingresado valores incorrectos (solo se permiten iguales o menores a 10 y mayores a 0:) "
  end
end