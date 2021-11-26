require './classes/grid.rb'

class Cells
  def generacion(grid, grid2, fil, col)
    for i in(1..fil - 2)
      for j in (1..col - 2)
        celulas_vivas = 0
        for a in(-1..1)
        for b in (-1..1)
            celulas_vivas += grid[i - a][j - b]
        end
        end
        celulas_vivas -= grid[i][j]
        if grid[i][j] == 1 && celulas_vivas < 2
        grid2[i][j] = 0
        elsif grid[i][j] == 1 && celulas_vivas > 3
        grid2[i][j] = 0
        elsif grid[i][j].zero? && celulas_vivas == 3
        grid2[i][j] = 1
        else
        grid2[i][j] = grid[i][j]
        end
      end
    end
  end
end
    