//To Determine the proper 3 phase capacitor bank
//Page 488
clc;
clear;

V=12.8; //Voltage in kV
xl=0.8; //Reactance per unit length
l=3; //Distance of the line
Xl=xl*l; //Effective Reactance of the the Line
pf=0.8; //Initial Power Factor
pfn=0.88; //New Improved Power Factor
Qcu=150; //Capacity of each unit available
XT=1.6384; //Reactance of the transformer

S3phi=5000*exp(%i*%pi*acosd(pf)/180); //Presently existing Load

//For New Load Real part of the Load doesn't Change

QLnew=real(S3phi)*tand(acosd(pfn)); //The Required VAr

S3phinew =sqrt((real(S3phi)^2)+(QLnew^2)); //New Apparent Power

Qc=imag(S3phi)-QLnew; //Minimum Size of capacitor bank;

N=ceil(Qc/Qcu); //Number of Units Required
Qcn=N*Qcu; //Required VAr

XL=Xl+XT; //Total Reactance

VRpu=Qcn*XL/(1000*(V^2)); //Voltage Rise Per unit

printf('\nThe The Voltage Rise found out is %g pu V, which is greater than the voltage rise criterion.\nHence %g Capacitor units of %g kVAr must be installed\n',VRpu,N,Qcu)
