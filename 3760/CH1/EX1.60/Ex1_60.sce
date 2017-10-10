clc;
p=10; // number of full pitch coil in stator
t=120; // phase spread of coil
q=10.5*10^-3; // flux per pole in Weber
f=50; // frequency  of induction regulator
n=2; // number of turns in each coil;
E1=230; // supply voltage
il=30; // load current
N=p*n; // Total number of turns 
kw=sin((t/2)*(%pi/180))/((t/2)*(%pi/180)); // distribution factor
E2=sqrt(2)*%pi*f*N*q*kw; // maximum secondary induced EMF
Vo1=E1+E2; Vo2=E1-E2; // range of output voltage
k=(il*E2)/1000; 
printf('Maximum induced voltage is %f v\n',E2);
printf('range of output voltage is %f v-%f v\n',Vo2,Vo1);
printf('KVA rating of induction regulator is %f KVA',k);


