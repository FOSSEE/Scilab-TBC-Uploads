// Chapter 2_Generalized Configurations and Functional Descriptions of measuring instruments
//Caption_Error in measurement
//Ex_1 part_2 //page 22
disp("ts=0.1")
disp("ps=2.5")
disp("dT=20")

ts=0.1   //('enter the temperature sensitivity=:')
ps=2.5   //('enter the pressure sensitivity(in units/MPa)=:')
dT=20   //('enter the temperature change during pressure measurement=:')
P=120   //('enter the pressure to be measured (in MPa)=:')
error=(ts*dT)/(ps*P);
printf('the error in measurement is %fd percent\n',error)