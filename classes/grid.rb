
class Grid

  

  def dibujar(grid, fil, col)
    for i in(0..fil - 1)
      for j in (0..col - 1)
        if grid[i][j] == 1
          print('*')
        else
          print('.')
        end
      end
        print "\n"
    end
  end
end