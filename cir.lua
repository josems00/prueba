p1 = Point(100,200)
p2 = Point(200,100)
p3 = Point(300,200)
color (255,0,0) draw(p1)
color (0,255,0) draw(p2)
color (0,0,255) draw(p3)

s1=Segment(p1,p2)
s2=Segment(p2,p3)
color(0,0,0) width(1.5)
draw(s1)
draw(s2)

m1=s1.MiddlePoint
m2=s2.MiddlePoint

color(255,0,0) draw(m1)
color(255,0,0) draw(m2)
