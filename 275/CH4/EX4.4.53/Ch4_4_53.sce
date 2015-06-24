clc
disp("Example 4.53")
printf("\n")
disp("find maximum oscillating frequency")
Vbb=20
//the parameters of UJT
Ip=10^-6
Iv=10*10^-3
Vv=3.5
n=0.75
PRe=4.7*10^3
C=0.5*10^-6
Vd=0.7
Vp1=(n*Vbb)+Vd
//to find maximum oscillating frequency
T=PRe*C*log((Vbb-Vv)/(Vbb-Vp1))
f=1/T
printf("Oscillator frequency \n%f hz\n",f)
