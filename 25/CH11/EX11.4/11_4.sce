//example:-11.4,page no.-596.
//program to calculate the impedence of the diode.
Cp=0.1*10^-12;Lp=2*10^-9;Cj=0.15*10^-12;Rs=10;Is=0.1*10^(-6);
Io1=0;Io2=60*10^(-6);alpha=(1/25)*(10^3);
R1j=1/(alpha*(Io1+Is)); // for Io=0.
R2j=1/(alpha*(Io2+Is)); // for Io=60 mA.
disp(R1j,'junction resistance for Io=0, in ohm = ')
disp(R2j,'junction resistance for Io=0, in ohm = ')