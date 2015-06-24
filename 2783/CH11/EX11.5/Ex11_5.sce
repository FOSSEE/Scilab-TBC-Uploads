clc
//initialization of new variables
clear
R=0.5
U=290 //m/s
c1=150 //m/s
alpha1=37 //degrees
beta2=alpha1
cp=0.24
eta=0.85
gama=1.4
T01=280 //k
//calculations
cp=cp*4200
alpha1=alpha1*%pi/180
Cth1=c1*sin(alpha1)
DCth=U-2*c1*sin(alpha1)
beta1=atan((U-Cth1)/c1*cos(alpha1))
Cp=1-cos(beta1)^2/cos(beta2)^2
Pr=(1+eta*U*DCth/(cp*T01))^(gama/(gama-1))
//results
printf('The compression ratio is %.2f',Pr)
