//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 2 ; Example 2.3
//Scilab Version - 6.0.0 ; OS - Windows


clear;
clc;
P=100           //Real power in kW
pf=0.8;         //Power factor
pfc=0.95        //Corrected power factor with capacitor
Ol=acos(pf);    //Power factor angle without capacitor
Oc=acos(pfc);   //Power factor angle with capacitor
Ql=P*tan(Ol);   //Reactive power delivered by the source without capacitor in kVAR
Sl=P/cos(Ol);   //Apparent power delivered by the source without capacitor in kVA
Qs=P*tan(Oc);   //Reactive power delivered by the source with capacitor in kVAR
Ss=P/cos(Oc);   //Apparent power delivered by the source with capacitor in kVA
Qc=Ql-Qs;       //Reactive power delivered by the capacitor in kVAR
printf('\nThe capacitor delivers %f kVAR',Qc);
