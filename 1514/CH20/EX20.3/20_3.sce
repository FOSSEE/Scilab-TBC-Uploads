//chapter 20
//example 20.3
//page 640
clear all;
clc ;
//given
E=20;//supply voltage
I=1;//supply current mA
//without thermistor & R2
Rc1=5;Rc2=6.5;//coil resistance 
//At -15degree
R1=(E/I)-Rc1;
//At 50degree
R11=(E/I)-Rc2;
printf('\nwithout thermistor & R2:')
printf("\nR1=%d kohm,R1=%.1f kohm at -15 and 50 degrees respectively",R1,R11);
//with thermistor
Rt1=3;Rt2=0.100;//thermistor resistance 
//At -15degree
R1=(E/I)-Rt1-Rc1
//At 50degree
R11=(E/I)-Rt2-Rc2;
printf('\nwith thermistor:')
printf("\nR1=%d kohm,R1=%.1f kohm at -15 and 50 degrees respectively ",R1,R11);
//with thermistor & R2
//At -15degree
R1=(E/I)-(3/2)-Rc1
//At 50degree
R11=(E/I)-((3*0.1)/(3+0.1))-Rc2;
printf('\nwith thermistor & R2:')
printf("\nR1=%.1f kohm,R1=%.1f kohm at -15 and 50 degrees respectively",R1,R11);
