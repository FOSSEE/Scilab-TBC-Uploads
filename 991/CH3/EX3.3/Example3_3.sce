//Example 3.3.
clc
format(6)
d=6*10^-3
q=1.6*10^-19
m=9.1*10^-31
vax=3*10^6
E=350/d
disp(E,"Therefore, E(V/m) = V / d =")
format(10)
ax=q*E/m
disp(ax,"    ax(m/s^2) = qE / m =")
disp("We know that,")
disp("       x = vox*t + 0.5*a*t^2")
disp("      vx = vox + ax*t")
disp("(i) Consider x = 3*10^-3 m")
disp("3*10^-3 = 3*10^6*t + 5.13*10^15*t^2")
disp("Solving this equation,")
format(9)
t=poly(0,'t')
p1=(5.13*10^15)*t^2+(3*10^6)*t-3*10^-3
t1=roots(p1)
ans1=t1(1)
disp(ans1,"t(seconds)= ")
format(8)
vx=(3*10^6)+((1.026*10^16)*(5.264*10^-10))
disp(vx,"vx(m/s)= ")
disp("(ii) Consider x = 6*10^-6 m")
disp("t^2+(5.85*10^-10)*t-(1.17*10^-18) = 0")
disp("Solving this equation,")
format(9)
p2=t^2+(5.85*10^-10)*t-1.17*10^-18
t2=roots(p2)
ans2=t2(1)
disp(ans2,"t(seconds)= ")
vx1=(3*10^6)+((8.28*10^-10)*(1.026*10^16))
disp(vx1,"vx(m/s)= ")