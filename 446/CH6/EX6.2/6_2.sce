clear    
clc
disp('Exa-6.2(a)');
Na=6.023*10^23;p=19.3;M=197;
n=Na*p/M;         //The number of nuclei per atom
t=2*10^-6;Z=79;K=8*10^6;x=1.44; theta=90;  //x=e^2/4*pi*epsi0
b1=t*Z*x*cotd(theta/2)/(2*K)         //impact parameter b
f1=n*%pi*b1^2*t                      //scattering angle greater than 90
printf('The fraction of alpha particles scattered at angles greater than 90 degrees is %.2e\n',f1);
disp('Exa-6.2(b)');
theta=45
b2=t*Z*x*cotd(theta/2)/(2*K);
f2=n*%pi*b2^2*t;                  //scattering angle greater than 45
fb=f2-f1                       //scattering angle between 45 to 90
printf('The fraction of particles with scattering angle from 45 to 90 is %.3e\n',fb);