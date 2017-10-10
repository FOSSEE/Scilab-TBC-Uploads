//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 2 ; Example 2.5
//Scilab Version - 6.0.0 ; OS - Windows


clc;
clear;
Pim=400;                                    //Real Power of induction motor in kW
pfim=0.8;                                   //Power factor of the induction motor
Ssm=150;                                    //Apparent power of the synchronous motor in kVA
pfsm=0.9;                                   //Power factor of the synchronous motor
Vline=4160;                                 //RMS line voltage of AC supply in Volts
Sim=Pim/pfim;                               //Apparent power of the induction motor in kVA
Qim=sqrt(Sim*Sim-Pim*Pim);                  //Reactive power absorbed by the induction motor in kVAR
Psm=Ssm*pfsm;                               //Real power absorbed by the synchronous motor in kW
Qsm=sqrt(Ssm*Ssm-Psm*Psm);                  //Reactive power delivered by the synchronous motor in kVAR
P=Pim+Psm;                                  //Total real power of the combined load in kW
Q=Qim-Qsm;                                  //Total reactive power absorbed by the combined load in kVAR
S=sqrt(P*P+Q*Q);                            //Total apparent power absorbed by the combined load in kVA
pf=P/S;                                     //Power factor of the combined load
Iline=S*1000/(sqrt(3)*Vline);               //Line current of the combined load in Amperes
XCdel=3*Vline*Vline/(Q*1000);               //Capacitive reactance at each leg for unity power factor in Ohm 
Iupf=P*1000/(sqrt(3)*Vline);                //Line current at unity poiwer factor
printf('\nThe power factor of the combined motor load is %f',pf);
printf('\nThe magnitude of line current delivered by the source is %f Amperes',Iline);
printf('\nThe magnitude of capacitive reactance at each leg for unity power factor is %f Ohm',XCdel);
printf('\nThe magnitude of the line current delivered by the source with capacitor bank installed is %f Amperes',Iupf);
