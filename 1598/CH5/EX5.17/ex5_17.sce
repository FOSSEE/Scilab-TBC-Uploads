clc;
disp("3I1-I2-1=0   (1)");   //KVL equation
disp("3I1-I2+2I=2  (2)");   //KVL equation
disp("3I1-I1+2I=2  (3)");   //KVL equation
I1=0.2352;  //from (1)(2)(3)through AB 
I2=-0.11764; //from (1)(2)(3)through BD
I=0.58823;  //from (1)(2)(3)through main circuit
Ig=-0.117647;  //current in Ampere
Ibc=I1-I2; //calculating current in BC
Iad=I-I1;  //calculating current in AD
Idc=I-I1-Ig;  //calculating current in DC
disp(Ibc,"Current in branch BC in Ampere = ");  //displaying result
disp(Iad,"Current in branch AD in Ampere = ");  //displaying result
disp(Idc,"Current in branch DC in Ampere = ");  //displaying result