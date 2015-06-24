//Finding the thristor ratins of a three phase AC switch
//Example 12.2 (Page No- 567)
clc 
clear
//Given data
Po=20000;//power in watts
PF=0.707;//power factor
V_L=440;//load voltage
Vs=440/sqrt(3);

Is=Po/(sqrt(3)*V_L*PF);//Is=Po/(sqrt(3)*V_L*PF) is line current.
printf('The line current Is:%2.3f A \n',Is )
Im=sqrt(2)*Is;//peak current of thyristor in A
printf(' Peak current of a thyristor Im:%2.3f A \n',Im);
Ia=Im/%pi;//average current of a thyristor in A
printf(' Average current of a thyristor Ia:%2.2f A \n',Ia);
Ir=Im/2//rms current of a tyristor in A
printf(' RMS current of a thyristor Ir:%2.3f A \n',Ir);
PIV=sqrt(2)*V_L;//peak inverse voltage
printf(' peak inverse voltage across diode:%3.1f V',PIV);
  
