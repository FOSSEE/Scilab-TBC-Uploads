//caption:determine_transfer_function,Wn,zeta
//example 6.10.10
//page 179
//J=moment of inertia,f=C,Ke=error detector gain,Wn=natural frequency, zeta=damping ratio,Km=torque constant
syms J f s
Ke=5.73;
Km=0.045;
n=sym('N1/N2')
n=subs(n,'N1/N2',1/10);
J=0.25*float(n^2);//referred to motor side
f=1*float(n^2);//referred to motor side
//from the block diagram given in fig 6.10.6 on page 179,
a=(Ke*Km)
b=1/(J*s^2+f*s)
c=(b*float(a))
G=(n*c);
G=simple(G)
H=1;
d=(1+G*H);
d=simple(d);
CL=G/d;
CL=simple(CL)
disp(CL,"C(s)/R(s)=");
e=poly([328800 127516 31879],'s','coeff')
printf("the characterstics eq. is:\n");
disp(e);
f=coeff(e)
Wn=sqrt((f(1,1)/f(1,3)))//natural_frequency
zeta=((f(1,2)/f(1,3))/(2*Wn))//damping ratio
//part(b)
syms Td
g=1+s*Td
h=(g*G)
i=1+h*H
i=simple(i);
CL2=(h/i)
CL2=simple(CL2);
disp(CL2,"C(s)/R(s)=");
poly(0,'s');
l=s^2+(10.32*Td+4)*s+10.32;
printf("on simplyfying the characterstics eq. is:");
disp(float(l));
Wn1=sqrt(10.32)//natural_frequency
//2*zeta1*Wn1=10.32*Td+4
zeta1=1;//as damping is critical
Td=(2*zeta1*Wn1-4)/10.32;
disp(Td,"time const. of advanced phase circuit,Td=");

