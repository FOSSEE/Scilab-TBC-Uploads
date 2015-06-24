clc
p1=10; //bar
t1=200; //0C
C1=60; //m/s^2
c2=650; //m/s
p2=1.5; //bar
h1=2827.9; //kJ/kg
h_f2=467.1; //kJ/kg
h2=2618.45; //kJ/kg
h_g2=2693.4; //kJ/kg
x2=(h2-h_f2)/(h_g2-h_f2);
disp("quality of steam leaving the nozzle=")
disp(x2)