//Exa 2.49
clc;
clear;
close;
//Given data :
format('v',5);
ISCbyIFL=4;//ratio of SC current to full load current
TsBYTf=1/4;//ratio of atarting torque to full load torque
Slip=3;//in %
Slip=3/100;//in fraction
//Formula : TsBYTf=Percent_Tapping^2*ISCbyIFL^2*Slip
tapping=sqrt(TsBYTf/(Slip*ISCbyIFL^2));//in %
disp(tapping*100,"Tapping(in %) :");