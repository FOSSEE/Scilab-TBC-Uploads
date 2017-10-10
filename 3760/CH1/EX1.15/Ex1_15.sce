clc;
P=10000; // rated power of transformer
vbh=2000; // base voltage for h v side in volts
ibh=P/vbh; // base current for h v side in Ampere
vbl=200; // base voltage for l v side in volts
ibl=P/vbl; // base current for l v side in Ampere
k=vbl/vbh; // turns ratio
r1=3.6; // resistance of h v side of transformer in ohm
x1=5.2; //leakage reactace h v side of transformer in ohm
z=vbh/ibh; // base impedance for h v side'
r1pu=r1/z; // p u value for resistance of h v side of transformer in ohm
x1pu=x1/z; // p u value for leakage reactance of h v side of transformer in ohm
r2=0.04; //resistance of l v side of transformer in ohm
x2=0.056; //leakage reactace l v side of transformer in ohm
// total resistance referred to  h v side
re=r1+r2/k^2; 
repu=re/z;
// total leakage impedance referred to h v side 
xe=x1+x2/k^2;
xepu=xe/z;
printf('total  per unit resistance and per unit leakage impedance referred to  h v side are %f and %f\n',repu,xepu);
Z=vbl/ibl; // base impedance for l v side
Re=r2+r1*k^2; // total resistance referred to  l v side
Repu=Re/Z;
Xe=x2+x1*k^2; //total leakage impedance referred to l v side 
Xepu=Xe/Z; 
printf('total  per unit resistance and per unit leakage impedance referred to  l v side are %f and %f ',Repu,Xepu);
