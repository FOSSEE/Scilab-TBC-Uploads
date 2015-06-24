clc
disp("Problem 11.11")
printf("\n")

printf("Given")
disp("v=42.5*cos(1000*t+30 deg)V Z=3+i4 ohm")
Vmag=42.5;
Z=3+%i*4;
R=sqrt(3^2+4^2)
Theta=atan(4/3)*(180/%pi)
Veffm=Vmag/sqrt(2)
Veffph=30
Ieffm=Veffm/R
Ieffph=30-Theta

Smag=Veffm*Ieffm
Sph=Veffph-Ieffph
x=Smag*cos((Sph*%pi)/180)
y=Smag*sin((Sph*%pi)/180)
z=complex(x,y)
pf=cos((Theta*%pi)/180);

printf("Real Power is %fW\n",x)
printf("Reactive Power is %fvar(inductive)\n",y)
printf("Complex Power is %fVA\n",Smag)
printf("Power factor is %3.1f(lag)\n",pf)

