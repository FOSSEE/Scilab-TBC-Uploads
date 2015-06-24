tsat = 120.2+273; hfg = 2201.9;
T1 = 120.2+273;
T2 = 30+273;
Tr = -10+273;
COP_max = ((T1-T2)*Tr)/((T2-Tr)*T1);
ACOP = 0.4*COP_max;
Qe = (20*14000)/3600; // in KW
Qg = Qe/ACOP;
x = 0.9; 
H = x*hfg;
SFR = Qg/H;
disp("kg/s",SFR,"Steam flow rate required is")