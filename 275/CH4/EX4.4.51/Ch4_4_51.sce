clc
disp("Example 4.51")
printf("\n")
disp("Calculate minimum & maximum values of Re for the relaxation oscillator & also find maximum oscillating frequency")
printf("Given\n")
Vbb=15
//the parameters of UJT
Ip=10^-6
Iv=2.5*10^-3
Vv=2.5
n=0.7
PRe=20*10^3
C=10^-6
Vp=12
Vd=0.7
Vp1=(n*Vbb)+Vd
//minimum Re
Remin=(Vbb-Vv)/Iv
//maximum Re
Remax=(Vbb-Vp1)/Ip
//to find maximum oscillating frequency
T=PRe*C*log((Vbb-Vv)/(Vbb-Vp))
f=1/T
printf("maximum Re \n%f ohm\n",Remax)
printf("minimum Re \n%f ohm\n",Remin)
printf("maximum oscillating frequency \n%f hz \n",f)
