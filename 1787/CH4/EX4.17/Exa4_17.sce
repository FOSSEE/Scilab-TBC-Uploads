//Exa4.17
clc;
clear;
close;
//given data
Vin=20;//in volts
Rs=220;//in Kohm
Vz=10;//in volts
// part (i) RL=50;//in Kohm
disp("For RL=50ohm :");
RL=50;//in Kohm
VL=Vin*RL/(RL+Rs)
disp("Since voltage across load, VL is less than breakdown voltage of zener diode. Zener will not conduct.")
IR=Vin/(Rs+RL);//in mA
IL=IR;//in mA
IZ=0;//in mA
disp(VL,"VL in volt : ");
disp(IL*1000,"IL in mA :");
disp(IZ,"Iz in mA: ");
disp(IR*1000,"IR in mA :");

// part (ii) RL=200;//in Kohm
disp("For RL=200ohm : ")
RL=200;//in Kohm
VL=Vin*RL/(RL+Rs)
disp("voltage across load, if zener diode is open circuited.")
IR=Vin/(Rs+RL);//in mA
IL=IR;//in mA
IZ=0;//in mA
disp(VL,"VL in volt : ");
disp(IL*1000,"IL in mA :");
disp(IZ,"Iz in mA: ");
disp(IR*1000,"IR in mA :");