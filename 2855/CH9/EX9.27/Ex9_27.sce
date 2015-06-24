//Chapter 9
//page no 340
//given
clc;
clear all;
a=4;            //in micrometer
V=2.4;
aw=1;           //in degree
NA1=0.2;
n1=1.45;            //refractive index
y=1;            //in micrometer
omega=a*[0.65+1.62*V^-1.5+2.88*V^-6]/sqrt(2);
printf("\n Normalised spot view (w)=  %0.2f micrometer",omega);
Lsml=2.17*(y/omega)^2;
printf("\n Insertion loss due to lateral,Lsm=  %0.2f dB",Lsml);     //answer is wrong in book 
Lsmg=2.17*(aw*%pi/180*omega*n1*V/a/NA1)^2;
printf("\n Insertion loss due to angular,Lsm=  %0.2f dB",Lsmg);

printf("\n Total Insertion loss,Lsmtotal=  %0.2f dB",Lsml+Lsmg);

