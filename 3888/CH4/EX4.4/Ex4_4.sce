//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 4.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


P=20;                                       //Load in kW
pf1=0.8;                                    //Actual Power factor 
pf2=0.95;                                   //Required Power factor 
phi1=acos(pf1);                             //Actual Power factor angle in degree
phi2=acos(pf2);                             //Required Power factor angle in degree
S1=P/pf1;                                   //Actual Apparent Power in kVA
S2=P/pf2;                                   //Modified Apparent Power in kVA
C_VAR=S1*sin(phi1)-S2*sin(phi2);            //Required rating of the Capacitor in kVAR
phi3=acos(0.1);                             //Power factor Angle of Phase Advancing device in degree
alpha=phi1-phi2;                            //Angle in degree
Beta=%pi/2-acos(0.1)+%pi-(phi1+%pi/2);      //Angle in degree
del=%pi-(Beta+alpha);                       //Angle in degree
ph_adv_KVA=S1*sin(alpha)/sin(del);          //Apparent Power of the Phase advancing device  in kVA

printf("\nThe rating of capacitor to raise the power factor to 0.95 lagging is %.2f kVAR",C_VAR);
printf("\nThe rating of the phase advancing device is %.2f kVA",ph_adv_KVA);





 
