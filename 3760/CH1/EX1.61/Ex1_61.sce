clc;
// subscript 1 and 2 indicates h v and l v winding
P=10000; // rated VA of transformer
E1=2300; // rated voltage 
E2=230; // rated voltage
r1=10; // total resistance
r2=0.10; // total resistance
l1=40*10^-3 ; l2=4*10^-4; // self-inductances 
m=10; // mutual inductance
k=E2/E1; // turns ratio
f=50; // frequency of supply;
disp('case 1');
L1=(m/k)+l1; 
printf('Primary self inductance is %f H\n',L1);
L2=(m*k)+l2; 
printf('Secondary self inductance is %f H\n',L2);
disp('case b');
r21=r2/k^2; // l v side resistance referred to h v side
l21=l2/k^2; // l v side self inductance referred to h v side
M1=m/k; // mutual inductance referred to h v side
printf('circuit parameters referred to primary winding are R1=%f ohm,R2=%f ohm,L1=%f H,L2=%f H and Lm1=%f H\n',r1,r21,l1,l21,M1);
r12=r1*k^2; // h v side resistance referred to l v side
l12=l1*k^2; // h v side self inductance referred to l v side
M2=m*k; // mutual inductance referred to l v side
printf('circuit parameters referred to secondary winding are R1=%f ohm,R2=%f ohm,L1=%f H,L2=%f H and Lm2=%f H\n',r12,r2,l12,l2,M2);
disp('case c');
lo=5+5*%i; // load connected to secondary
x1=2*%pi*f*l12; // leakage reactance
x2=2*%pi*f*l2; // leakage reactance
re2=real(lo)+r2+r12; // total resistance after referring to l v side
xe2=imag(lo)+x1+x2; //  total reactance after referring to l v side
Z=re2+%i*xe2; // total impedance
vt=(E2/abs(Z))*abs(lo); 
printf('Secondary terminal voltage is %f v',vt);
