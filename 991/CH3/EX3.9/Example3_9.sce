//Example 3.9.
clc
disp("Given,     T = 35.5/B *10^-12 s, B = 0.01 Wb/m^3, Va = 900V")
disp("Therefore, T = 3.55*10^-9 s")
T = 3.55*10^-9
Va=900
format(9)
v=sqrt(2*(1.76*10^11)*900)
disp(v,"Velocity,  v(m/s) = sqrt(2qVa/m) =")
format(6)
r=(17.799*10^6)/(0.01*1.76*10^11)
x1=r*10^3
disp(x1,"Radius,  r(mm) = mv/qB = v/(q/m)B =")