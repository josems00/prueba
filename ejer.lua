-- Definir los puntos
p1 = Point(100, 200)
p2 = Point(200, 100)
p3 = Point(300, 200)

-- Dibujar puntos
color(255, 0, 0) draw(p1)
color(0, 255, 0) draw(p2)
color(0, 0, 255) draw(p3)

-- Crear segmentos
s1 = Segment(p1, p2)
s2 = Segment(p2, p3)

-- Dibujar segmentos
color(0, 0, 0) width(1.5)
draw(s1)
draw(s2)

-- Calcular puntos medios
m1 = Point((p1.x + p2.x)/2, (p1.y + p2.y)/2)
m2 = Point((p2.x + p3.x)/2, (p2.y + p3.y)/2)

-- Calcular vectores normales
v1 = Vector(p2.x - p1.x, p2.y - p1.y):Normal():Rotate90()
v2 = Vector(p3.x - p2.x, p3.y - p2.y):Normal():Rotate90()

-- Dibujar líneas perpendiculares
l1 = Line(m1, v1)
l2 = Line(m2, v2)

color(0, 0, 255) width(0.8)
draw(l1)
draw(l2)

-- Intersección de líneas: centro del círculo
c = l1:Intersect(l2)

-- Dibujar centro
color(255, 0, 255) width(3)
draw(c)

-- Calcular radio (distancia entre centro y p1)
r = Vector(c.x - p1.x, c.y - p1.y):Norm()

-- Dibujar círculo
color(255, 165, 0) width(1.5)
draw(Circle(c, r))

-- Mostrar coordenadas
print("Centro: (" .. c.x .. ", " .. c.y .. ")")
print("Radio: " .. r)
