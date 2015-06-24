R1=10;                     //Assigning values to parameters
R2=20;
R3=40;
R4=30;
R5=15;
V=2;
I1=V/(R1+R4);
I2=V/(R2+R5);
Vth=R2*I2-R1*I1;         //Calculation of Thevenin voltage
Rth=((R1*R4)/(R1+R4))+((R2*R5)/(R2+R5));   //Calculation of Thevenin resistance
Il=Vth/(Rth+R3);
disp("Amperes",Il,"Load current")