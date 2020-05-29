function love.load()
  x = 300
  y = 200
end
function love.conf(t)
  t.window.width  = 1000
  t.window.height = 800
end

function love.update(dt)
  if love.keyboard.isDown("d") then
    x = x + 5
  elseif love.keyboard.isDown("a") then
    x = x - 5
  end
  
  if love.keyboard.isDown("w") then
    y = y - 5
  elseif love.keyboard.isDown("s") then
    y = y + 5
  end
end


function love.draw()
  love.graphics.setBackgroundColor(1,1,1,1)
  
  
  love.graphics.setColor(0,0,0,1)
  love.graphics.circle( "fill",x, y ,50,50)
  
  love.graphics.setColor(0,0,0,1)
  love.graphics.rectangle("line",x/1.5,y/1.5,150,150)
end