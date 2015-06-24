V=100;                                      //Assigning values to parameters
R1=20;
R2=80;
R3=40;
R4=50;
I1=V/(R1+R2);
I2=V/(R3+R4);
Vth=R3*I2-R1*I1;                             //Calculating Thevenin voltage
Rth=((R1*R2)/(R1+R2))+((R3*R4)/(R3+R4));    // Calculating Thevenin resistance
Rl=5;
Il=Vth/(Rth+Rl);                            //Calculating Thevenin current
Rla=10;
Ila=Vth/(Rth+Rla);
Rlb=20;
Ilb=Vth/(Rth+Rlb);
disp("Amperes",Il,"Current in 5 Ohm load");
disp("Amperes",Ila,"Current in 10 Ohm load");
disp("Amperes",Ilb,"Current in 20 Ohm load");