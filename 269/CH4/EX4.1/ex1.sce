disp("chap 4")
disp("ex 1")
disp("the equation for current by kvl is")
disp("i=v/r*(1-exp(-r*t/L))")// r-resistor,L-inductor
v=3// assumed supply=5v
r=10//assumed r=10 ohm
L=500//assumed inductance=500henry
t=0:0.1:500
i=v/r*(1-exp(-r*t/L))
plot(i)