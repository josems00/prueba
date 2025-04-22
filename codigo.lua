-- Dibujar un círculo rojo con radio 50
color(255, 0, 0)
width(2)

local centro = Point(150, 150)
local c = Circle(centro, 50)

draw(c)
print("Círculo dibujado correctamente")