-- Crear puntos
local p1 = Point(0, 0)
local p2 = Point(10, 0)
local p3 = Point(5, 8)

-- Crear segmentos
local s1 = Segment(p1, p2)
local s2 = Segment(p2, p3)

-- Puntos medios
local m1 = s1.MiddlePoint
local m2 = s2.MiddlePoint

-- Normales usando Line.Normal
local n1 = s1.Line.Normal
local n2 = s2.Line.Normal

-- Líneas perpendiculares a los segmentos en sus puntos medios
local l1 = lineFrom(n1, m1)
local l2 = lineFrom(n2, m2)

-- Centro del círculo (intersección de las mediatrices)
local c = intersection(l1, l2)

-- Radio: distancia del centro a uno de los puntos
local r = c:Distance(p1)

-- Dibujar puntos
color(255, 0, 0)   -- rojo
width(2)
draw(p1)
draw(p2)
draw(p3)

-- Dibujar segmentos
color(0, 0, 255)   -- azul
width(1)
draw(s1)
draw(s2)

-- Dibujar mediatrices
color(0, 128, 0)   -- verde
width(1)
draw(l1)
draw(l2)

-- Dibujar el círculo
color(0, 0, 0)     -- negro
width(2)
draw(Circle(c, r))
