
def circle(point)
  x = point[0]
  y = point[1]
  res = [[x+1,y+2],[x+2,y+1],[x+2,y-1],[x+1,y-2],
  [x-1,y-2],[x-2,y-1],[x-2,y+1],[x-1,y+2]]
  res.filter!{|x,y| x>=0 && x<=7 && y>=0 && y<=7}
  res
end


def BFS_path(stt, ed, path)

  queue = [[stt, []]]
  while !queue.empty?
    cur_point, cur_path = queue.shift
    moves = circle(cur_point)
    moves.each do |move|
      #cur_p = cur_path
      if move == ed
        cur_path.push(move)
        puts "You made it in #{cur_path.size} moves!"
        p cur_path
        return
      else
        new_path = cur_path.dup
        new_path.push(move)
        queue.push([move, new_path])


      end
      #cur_path.pop
    end
  end
end

BFS_path([0,0],[7,7],[])
