clc//
//
//

//Variable declaration
s=1*10^-3;    //size(m)
l=1*10^-3;    //length(m)
lamda=650*10^-9;    //wavelength(m)

//Calculation
tantheta=(l/2)/s;     
theta=atan(tantheta);    //angle(radian)
sintheta=(sin(theta));

ss=0.6*lamda/sintheta;     //spot size(m)

//Result
printf("\n spot size is %0.3f micro m",ss*10^6)
