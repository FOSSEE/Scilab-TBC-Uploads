clc
//initialization of new variables
clear
Cz=120 //m/s
R_av=0.5 //m
T01=300 //k
w=4000 //RPM
alpha1=22 //degrees
beta2=27 //degrees
eta=0.98
Cp=0.24 // kcal/kg C
gama=1.4
//calculations
Cp=Cp*4200 //1 kcal= 4200 J
alpha1=alpha1*%pi/180
beta2=beta2*%pi/180
U=2*%pi*R_av*w/60
DCth=U-Cz*(tan(alpha1)+tan(beta2))
Pr=(1+eta*U*DCth/(Cp*T01))^(gama/(gama-1))
//results
printf('The pressure rise (compression ratio) is %.2f',Pr)
