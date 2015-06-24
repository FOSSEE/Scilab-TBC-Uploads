clear
clc

ab=1000
bc=900
ac=600

A=500
B=750
C=450

theta=acos((ab^2 + ac^2 - bc^2)/(2*ac*ab))
am=ac * cos(theta)
cm=ac * sin(theta)

x= ((B*ab)+(C*am))/(A+B+C)
y= ((C*cm))/(A+B+C)

mprintf("Coordinates wrt A are (%.2f, %.0f)", x,y)
