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

draw(m1)
draw(m2)


