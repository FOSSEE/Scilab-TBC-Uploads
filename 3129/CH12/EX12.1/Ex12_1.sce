//Finding the Thyristor rating of a single phase AC switch 
//Example 12.1(Page No-566) 
clc
clear
//given data 
Po=5000;//load power in watts 
PF=0.88;//power factor
Vs=120;//in volts

//part(a)
Im=(sqrt(2)*Po)/(Vs*PF);//in A
printf('(a) The peak load current Im:%2.2f A \n',Im)
Ia=Im/(%pi);
printf('     Average current Ia:%2.2f A \n',Ia)
Ir=Im/2;
printf('     The RMS current is:%2.2f A \n',Ir)
PIV=sqrt(2)*Vs;
printf('     Peak inverse voltage across thyristor:%3.1f V \n',PIV)

//part (b)
b=acosd(0.88);//alpha1
printf(' (b) Firing angle for T1:%2.2f Degrees \n',b);
c=180+b;//alpha2
printf('     Firing angle for T2:%3.2f Degrees \n',c)


