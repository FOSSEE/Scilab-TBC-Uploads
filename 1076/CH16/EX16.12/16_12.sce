clear
clc

V=250

L=[
150 200 280 320 390 450 500
20 40 35 25 10 20 30 
]

r=.1/(2*500)

D=L(1,:)
I=L(2,:)'

dv=2*r*D*I

Ve=V-dv

mprintf("Voltage at far end is %.2f V", Ve)
