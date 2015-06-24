clc
disp("Example 7.13")
printf("\n")

printf("Given")
disp("Capacitance is 1uF")
C=1*10^-6;
disp("a)")
//Let k=1 which results in t=5ms
t=5*10^-3;
vac=(integrate('.004','t',0,0.003)-integrate('.002','t',0.003,0.005))/C;
printf("vac=%dV\n",vac);

//In general
disp("At t=5k voltage follows as v=8k ms")

disp("b)")
//As vdc=1/C*integrate(Idc*dt)
//On solving for Idc
vdc=vac
Idc=(1/((integrate('1/vac','t',0,0.005))/C))*10^3
printf("Idc=%3.2fmA\n",Idc);
disp("Idc is equal to <i(t)> in the period of 5ms")

