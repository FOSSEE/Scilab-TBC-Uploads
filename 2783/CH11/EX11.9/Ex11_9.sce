clc
//initialization of new variables
clear
r=0.3 //m
w=7000 //RPM
T01=1200 //K
rho2=0.5 //kg/m^3
R=0.5
beta2=30 //degrees
eta=0.9
gama=1.4
cp=0.24
//calculations
cp=cp*4200
U=r*w*2*%pi/60
beta2=beta2*%pi/180
// to solve for c2 and w2
//Ax=b
A=[-sin(%pi/2-beta2) -sin(beta2)
   cos(%pi/2-beta2) -cos(beta2)]
b=[-U;0]
x=inv(A)*b
w2=x(2)
c2=x(1)
wt=U*(U-2*w2*sin(beta2))
Tr=wt/(cp*T01)
Pr=(1-Tr/eta)^(gama/(gama-1))
//results
printf('The power of the turbine (per unit mass) is %.2f m^2/s^2',wt)
printf('\n The pressure ratio is %.3f',Pr)
printf('\n Because R = %.2f, half of pressure drop takes place in turbine',R)
