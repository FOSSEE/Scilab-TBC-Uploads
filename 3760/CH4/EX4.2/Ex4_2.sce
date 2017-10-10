clc;
l=0.3;//core length
r=0.2;//radius
n=20;//speed in r.p.s.
Ia=20;//armature current
Z=500;//total conductors
Bav=0.5;//avg. flux density
a=4;//lap-wound
P=4;//no of poles
Wm=2*%pi*n
phi=((0.5*2*%pi*0.2*0.3)/4);
Ea=((P*n*Z*phi)/a);//generated emf
Pm=Ea*Ia;//gross mechanical power developed
Te=((Ea*Ia)/Wm);//internal torque
printf('Generated E.M.F. is %f V.\n',Ea);
printf('Gross mechanical power developed is %f W.\n',Pm);
printf('Internal Torque is %f Nm.',Te); 
