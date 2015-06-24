m=20; //kg
g=9.81; //m/s^2
z2=0;
z1=15;

disp("(i) When the stone is about to enter the water")
Q=0
W=0
dU=0
PE=m*g*(z2-z1)
KE=-PE

disp("(ii) When the stone dips into the tank and comes to rest")
Q=0
W=0
KE=0
PE=m*g*(z2-z1)
dU=-PE

disp("(iii) When the water and stone come to their initial temperature")
W=0
KE=0
Q=-dU