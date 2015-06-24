//1.27
clc;
f=2000;
V=300;
RL=10;
//a=dv/dt
a=100*10^6;
R=300/100;
C=(0.632*V*RL)/(a*(R+RL)^2)*10^6;
printf("The value of capacitor= %.3f uF",C)
Power_Loss_snubber=0.5*C*10^-6*V^2*f;
printf("\nSnubber Power Loss= %.2f W",Power_Loss_snubber)
disp('All the energy stored in the capacitance C is dissipated in resistance R. Hence power Rating of R is 10.1W')