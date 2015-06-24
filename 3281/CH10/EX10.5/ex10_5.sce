//Page Number: 557
//Example 10.5
clc;
//Given,

er=9.7;
h=0.5; //mm
w=0.5; //mm
lt=2D-4; 
t=0.02; //mm
f=5D+9; //Hz
fg=5; //HZ
c=3D+8;
rs=8.22D-3*sqrt(fg);

//(i) Dielectric constant
dc=((er+1)/2)+(((er-1)/2)*(1/sqrt(1+12*h/w)));
disp(dc,'Dielectric constant:');

//(ii) Characterstic Impedance
ci=(60/sqrt(dc))*log((8*h/w)+(w/(4*h)));
disp('ohm',ci,'Characterstic impedance:');

//(iii) Dielectric attenuation
lam0=c/f;
alphd=(%pi/lam0)*(er/sqrt(dc))*((dc-1)/(er-1))*lt;
disp('Np/m',alphd,'Dielectric attenuation:');

//Conductor attenuation
r1=[0.94+(0.132*(w/h))-(0.0062*((w/h)^2))]*[(1/%pi)+(1/(%pi^2))*log((4*%pi*w)/t)]*(rs/(w*1D-3));
r1m=r1*1D-2;
r2=(w/h)/[((w/h)+5.8+(0.03*(h/w)))]*(rs/(w*1D-3));
r2m=r2*1D-2;
alphc=(r1+r2)/(2*ci);
disp('Np/m',alphc,'Conductor attenuation:');

//(iv) Total attenuation
A=alphc+alphd;
Adb=A*8.686*1D-2;
disp('db/cm',Adb,'Total attenuation:');
