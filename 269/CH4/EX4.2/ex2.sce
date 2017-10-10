disp("chap 4")
disp("ex 2")
disp("the current equations obtained by solving diff eqn are")
disp("i1=v/r1(1-r2/(r1+r2))e^(-r1t/L)")
disp("i2=v/(r1+r2)(1+r2/r1e^(-(r1+r2)t/L))")
v=5//assumed supply=5v
r1=10//assumed r1=10ohms
r2=50
L=500//inductance=500 henry
t=0:0.1:500
i1=v/r1*(1-(r2/r1+r2*exp(-r1*t/L)))
subplot(221)
plot(i1)
i2=v/(r1+r2)*(1+r2/r1*exp(-(r1+r2)*t/L))
subplot(222)
plot(i2)