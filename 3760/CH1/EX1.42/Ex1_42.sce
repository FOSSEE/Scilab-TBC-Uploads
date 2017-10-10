clc;
// From fig 1.45
N1=1000; // no of turns on primary
N2=400; // no. of turns on secondary
n2=300; // no. of turns across points A and B
l1=600; // a load of 600 KW connected between points A and C
l2=60+60*%i; // load connected between points A and B
E=30000; // primary supply voltage
vac=E*(N2/N1); // secondary side voltage
I1=(l1*1000)/vac; // current through load of 600 KW
vab=(vac/N2)*n2; // volatge across pints A and B
I2=vab/l2 ; // load current through load of 60+60i
iba=I1+I2; // current through section Ab of winding
mfs=iba*n2+I1*(N2-n2); // seconadry mmf
ip=mfs/N1; 
printf('primary current is %f%fi A\n',real(ip),imag(ip));
Pi=(E*abs(ip)*cos(atan(imag(ip),real(ip))))/1000; 
printf('primary power input is %f KW\n',Pi);
pf=cos(atan(imag(ip),real(ip)))
printf('power factor at primary terminal is %f lagging',pf)
