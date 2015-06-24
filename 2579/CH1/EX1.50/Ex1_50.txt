//Ex:1.50
clc;
clear;
close;
V=5*10^-3;// rms value in volt
r=3*10^3;// in meter
Rr=73;// the radiation resistance in ohm
// The electric field in the far region may be given by
// Ex=(60.pi.Im.sin(x)/y.r)*e^(-jko.r)*integrate('(cos(koz)*e^(jko.z.cos(x))),'z',-y/4,y/4) 
// Ex=(60.pi.Im.sin(x)/y.r)*e^(-jko.r)*integrate('(2.cos(ko)(cos(ko.z).cos(x)+j.sin(ko.z).cos(x))','z',0,y/4)
// Ex=(60.pi.Im.sin(x)/y.r)*e^(-jko.r)*integrate('(2.cos(ko.z).cos(ko.z.cos(x)))','z',0,y/4)
// on integrating, we get,
// Ex=(60*Im/r)*(cos(pi/2.cos(x))/sin(x))
Emax=V*sqrt(2);// the peak value of field in V/m
// on putting x=90 degree in Ex=(60*Im/r)*(cos(pi/2.cos(x))/sin(x)), we get
// Emax=60*Im/r, then
Im=Emax*r/60;// max current in amp
Pav=(Im^2/2)*(Rr);// the average power in watts
printf("The expression of total electric field amplidude, Ex=(60*Im/r)*(cos(pi/2.cos(x))/sin(x))")
printf("\n The value of the average power= %f watts", Pav);