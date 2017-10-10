clc; clear; close;

Vsat=8*(10^6);//in cm/s
Cox=1.6*(10^(-6));//in F/cm^2
Vdd=1.2;//in volts
Wn=0.1*(10^(-4));//in cm
En=0.6//in volts
Vtn=0.4;//in volts
Wp=Wn;
Vtp=Vtn;
Ep=2.4;//in volts
Idsat=(Wn*Vsat*Cox*((Vdd-Vtn)^2))/(Vdd-Vtn+En);
Reqn=Vdd/(0.7*Idsat*2);
Idsat1=(Wp*Vsat*Cox*((Vdd-Vtp)^2))/(Vdd-Vtp+Ep);
Reqp=Vdd/(0.7*Idsat1*2);
mprintf('for NMOS device, Idsat(in amperes)=%f \n Reqn(in ohms)=%f',Idsat,Reqn);
mprintf('\n\nfor PMOS device, Idsat(in amperes)=%f \n Reqp(in ohms)=%f',Idsat1,Reqp);
//answers vary due to roundoff error
