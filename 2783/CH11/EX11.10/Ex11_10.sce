clc
//initialization of new variables
clear
r2=0.1 //m
m=1 //kg/s
T01=1200 //K
alpha2=65 //degrees
c2=330 //m/s
rho2=0.5 //kg/m^3
eta=0.9
gama=1.4
cp=0.24
//calculations
alpha2=alpha2*%pi/180
cp=cp*4200
Cthd=c2*sin(alpha2)
U=Cthd/2
P=m*U*Cthd
Tr=U*Cthd/(cp*T01)
Pr=(1-Tr/eta)^(gama/(gama-1))
RPM=U/(2*%pi*r2)
//results
printf('part (a)')
printf('\n Power generated is %.1f W',P)
printf('part (b)')
printf('\n Stagnation pressure drop is %.3f ',Pr)
printf('\n In rotor, zero static pressure drop takes place')
printf('\n part (c)')
printf('\n RPM = %d RPM',RPM*60)
