close();
clear;
clc;
//voltage gain 'Av'
Aol = -10^(6);
Av = 1;
Rd = 1*10^(6); //ohm

//(a)
//writing a loop equation
//let vs be any constant
vs = 1;
vo = vs/(1-(1/Aol));
if(vs==round(vo)) then 
  mprintf("Prooved that vo=vs\n\n");
end

//(b)
//amplifier input impedance 'Zin'
Zin = (1-Aol)*Rd; //ohm
mprintf("Zin = %d Tohm",Zin/(10^12));