clc
//initialization of new variables
clear
r=0.5 //m   average radius
Cz=140 //m/s  Axial velocity
w=4000 //RPM  turn rate
T01=300 //K   Stagnation temperature ahead of rotor
alpha1=20 //degrees  Incoming velocity angle
Cp=0.45    //Pressure rise coefficient
eta=0.98  //efficiency
cp=0.24 //specific heat
gama=1.4
//calculations
temp=alpha1 //just to store it
cp=cp*4200
U=r*w*2*%pi/60
alpha1=alpha1*%pi/180
beta1=atan(U/Cz-tan(alpha1))
beta2=acos(sqrt(cos(beta1)^2/(1-Cp)))
DCth=U-Cz*(tan(alpha1)+tan(beta2))
Pr=(1+eta*U*DCth/(cp*T01))^(gama/(gama-1))
printf('part (1)')
printf('\n stagnation pressure rise (ratio)is %.2f',Pr)
// part (2)
Cz=100 //m/s
alpha1=atan(U/Cz-tan(beta1))
Dalpha=alpha1*180/%pi-temp
printf('\n Stator ahead of this stage must be rotated by %.1f degrees',Dalpha)
DCth=U-Cz*(tan(alpha1)+tan(beta2))
Pr=(1+eta*U*DCth/(cp*T01))^(gama/(gama-1))
printf('\n part (2)')
printf('\n stagnation pressure rise (ratio)is %.2f',Pr)
