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
m1 = Point((p1.X + p2.X)/2, (p1.Y + p2.Y)/2)
m2 = Point((p2.X + p3.X)/2, (p2.Y + p3.Y)/2)

-- Calcular vectores normales
v1 = Vector(p2.X - p1.X, p2.Y - p1.Y):Normal():Rotate90()
v2 = Vector(p3.X - p2.X, p3.Y - p2.Y):Normal():Rotate90()

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
r = Vector(c.X - p1.X, c.Y - p1.Y):Norm()

-- Dibujar círculo
color(255, 165, 0) width(1.5)
draw(Circle(c, r))

-- Mostrar coordenadas
print("Centro: (" .. c.X .. ", " .. c.Y .. ")")
print("Radio: " .. r)
