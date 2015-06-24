//clear//
//Caption:Program to determine the phasor of forward propagating field
//Example12.1
//page400
clc;
close;
Eyzt = sym('100*exp(%i*10^8*t-%i*0.5*z+30)');
Eysz = sym('100*exp(%i*10^8*t-%i*0.5*z+30)*exp(-%i*10^8*t)');
disp(Eyzt)
disp(Eysz,'Forward Propagating Field in phasor form =')
//Result
//100*exp(-0.5*%i*z+100000000*%i*t+30)   
// Forward Propagating Field in phasor form =100*exp(30-0.5*%i*z) 
