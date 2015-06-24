//exapple 1.11
clc; funcprot(0);
// Initialization of Variable
Vin=4.5;
R1=1100;
R2=10000;
G1=3.4//gain 1
G2=120//gain 2
//calculation
Ir=Vin/R1;
disp(Ir*1000,"output current in mA:")
Vo=Ir*(R1+R2);
disp(Vo,"output voltage in V:")
Vuo1=Vo/G1;
disp(Vuo1,"gain output voltage 1 in V:")
Vuo2=Vo/G2;
disp(Vuo2,"gain output voltage 2 in V:")
clear()
