//Exa 2.57
clc;
clear;
close;
//Given data :
format('v',6);
//With star delta starter : 
TstBYTfl=0.35;//ratio of starting torque to full load torque
IstBYIfl=1.75;//ratio of starting current to full load current
ISCBYIs=sqrt(3);//ratio of SC current to starting current
ISCBYIfl=sqrt(3)*IstBYIfl;//ratio of SC current to full load current
//Formula : TstBYTfl=(ISCBYIfl)^2*S
S=TstBYTfl/(ISCBYIfl)^2;//in fraction
disp(S,"Full load Slip : ");
//With auto transformer with winding in delta : 
Ip=sqrt(3)*1.750*0.8;//full voltage phase current in Ampere
IlBYIf=4.2;//ratio of Line current to full load current
Ratio=IlBYIf^2*S;//ratio of starting current to full load current
disp(Ratio,"Ratio of line current at starting to full load current :");