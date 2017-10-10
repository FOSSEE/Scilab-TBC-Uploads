//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 14.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda=980e-9;//Operating wavelength in m
Sigmapa=3.1e-25;//Absorption cross section at pump in m^2
tsp=12e-3;//spontaneous emission lifetime in sec
h=6.626e-34;//Planck's constant in SI Units
c=3e8;//speed of electrons in m/s
v=c/lambda;//frequency corresponding to given wavelength in Hz
Ip0=h*v/(Sigmapa*tsp);//Intensity at pump in W/(m^2)
mprintf("\n Ip0=%e W/(m^2)",Ip0)//The answers vary due to round off error

//Case (i)
lambdas=1536e-9;//Wavelength of signal used
Sigmasa=4.644e-25;//Absorption cross section at signal in m^2
Sigmase=4.644e-25;//Emission cross section at signal in m^2
etas=Sigmase/Sigmasa;//Ratio of emission to absorption cross sections
mprintf("\n\n For a signal wavelength of 1536 nm:");
Ipt=Ip0/etas;//Threshold pump intensity in W/(m^2)
mprintf("\n Threshold pump intensity = %.2e W/(m^2)",Ipt);//The answers vary due to round off error
vs=c/lambdas;//frequency corresponding to wavelength of signal used
Is0=h*vs/((Sigmasa+Sigmase)*tsp);//Corresponding intensity at signal in W/(m^2)
mprintf("\n Is0=%.2e W/(m^2)",Is0);//The answers vary due to round off error

//Case (ii)
lambdas=1550e-9;//Wavelength of signal used
Sigmasa=2.545e-25;//Absorption cross section at signal in m^2
Sigmase=3.410e-25;//Emission cross section at signal in m^2
etas=Sigmase/Sigmasa;//Ratio of emission to absorption cross sections
mprintf("\n\n For a signal wavelength of 1550 nm:");
Ipt=Ip0/etas;//Threshold pump intensity in W/(m^2)
mprintf("\n Threshold pump intensity = %.2e W/(m^2)",Ipt);

//Case (iii)
lambdas=15380e-9;//Wavelength of signal used
Sigmasa=0.654e-25;//Absorption cross section at signal in m^2
Sigmase=1.133e-25;//Emission cross section at signal in m^2
etas=Sigmase/Sigmasa;//Ratio of emission to absorption cross sections
mprintf("\n\n For a signal wavelength of 1580 nm:");
Ipt=Ip0/etas;//Threshold pump intensity in W/(m^2)
mprintf("\n Threshold pump intensity = %.2e W/(m^2)",Ipt);
