//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 11.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


P=50;                                                                       //Power of the line in MW
l=100;                                                                      //Length of the line in km
pf=0.8;                                                                     //Power factor
V=132;                                                                      //Voltage of the line in kV
R=0.1;                                                                      //Resistance of the conductor in Ohm/km
X=0.3;                                                                      //Reactance of the conductor in Ohm/km 
y=3*10^(-6);                                                                //Admittance of the conductor in mho/km
Vr=V/(3)^(1/2);                                                             //Receiving end voltage in kV
Z=(R+%i*X)*100;                                                             //Series impedance in Ohm
Y=(0.0+%i*y)*100;                                                           //Shunt admittance on mho
Ir=P*10^(3)/(3*Vr*pf);                                                      //Receiving end current in A
Vc=Vr*(pf+%i*0.6)+(Ir*Z/2)*10^(-3);                                         //Capacitance voltage in kV
Ic=Y*Vc*10^(3);                                                             //Shunt branch current in A
Is=Ic+Ir;                                                                   //Sending end current in A
Vs=Vc+(Is*Z/2)*10^(-3);                                                     //Sending end voltage in kV
Vsl=abs(Vs)*3^(1/2);                                                        //Line to line sending end voltage in kV
pf1=cos(atan(imag(Vs),real(Vs))-atan(imag(Is),real(Is)));                   //Sending end power factor
Vr1=abs(Vs)/(1+(Z*Y/2));                                                    //Receiving end voltage at no_load in kV
reg=((abs(Vr1)-Vr)/Vr)*100;                                                 //Regulation of the line
eff=P*10^(6)/(P*10^(6)+3*((abs(Is)^(2)*R*l)/2+(Ir^(2)*R*l)/2))*100;         //Efficiency of the line
Ic1=(Y/2)*Vr*10^(3);                                                        //Capacitance 1 current in A
Il=Ir*(0.8-%i*0.6)+Ic1;                                                     //Line current in A
Vs1=Vr+Il*Z*10^(-3);                                                        //Sending end voltage in kV
Vsl1=abs(Vs1)*3^(1/2);                                                      //Line to line sending end voltage in kV
Ic2=((Y/2)*Vs1*10^(3));                                                     //Capacitance 2 current in A 
Is1=Il+Ic2;                                                                 //Sending end current in A
pf2=cos(atan(imag(Vs1),real(Vs1))-atan(imag(Is1),real(Is1)));               //Power factor
V=abs(Vs1)/(1+(Z*Y/2));                                                     //Receiving end voltage at no_load in kV
reg1=((abs(V)-Vr)/Vr)*100;                                                  //Regulation of the line
eff1=(P*10^(6)/(P*10^(6)+3*(abs(Il)^(2)*R*l)))*100;                         //Efficiency of the line


printf("\nnominal-T method");
printf("\nSending end voltage of the line %.2f kV",Vsl);
printf("\nSending end powerfactor of the line %.3f",pf1);
printf("\nEfficiency of the line %.2f percentage",eff);
printf("\nRegulation of the line %.2f percentage",reg);
printf("\nnominal-pi method");
printf("\nSending end voltage of the line %.2f kV",Vsl1);
printf("\nSending end powerfactor of the line %.3f",pf2);
printf("\nEfficiency of the line %.2f percentage",eff1);
printf("\nRegulation of the line %.2f percentage",reg1);
                                                           //Variation present in result due to wrong calculation of Ic2 value













