close();
clear;
clc;
//reverse breakdown voltage 'Vz'
Vz = 8.2; //V
Rl = 9; //ohm
vl = 8.2; //V
Vb = 12; //V
Vb_max = Vb + 0.1*Vb;
Vb_min = Vb - 0.1*Vb;
//75 mA <iz < 1 A
iz_max = 1; //A
iz_min = 0.075; //A
//by ohm's law
il = Vz/Rl; //A
//Applying KVL
Rs = (Vb_max-Vz)/(iz_max+il); //ohm
//check to see if iz>75 mA at lowest value of Vb
iz = (Vb_min-Vz)/Rs - il; //mA
if(iz>iz_min) then 
  vz = Vz; //V
end
mprintf("vz = %0.1f V",vz);