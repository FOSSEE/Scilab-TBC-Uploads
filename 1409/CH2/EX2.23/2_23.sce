clc;
//Page No:2-32
//Exmaple-2.23
//Power required for double sideband with full carrier (AM wave) transmission is given by
//PDSBFC=Pc*(1+(u^2/2))
//for u=1
//Lets assume Pc=1
Pc=1;
u=1;
PDSBFC=1.5*Pc;
//Power required for single suppressed carrier transmission is given by PSSB=(Pc*u^2)/4 
//for u=1
PSSB=0.25*Pc;
Psaving=([PDSBFC-PSSB]/PDSBFC)*100;
disp(+'%',Psaving,'% Power saving when u=1 is');
//for u=0.5
u1=0.5;
//PDSBFC=Pc*[1+(0.25/2)]
PDSBFC1=1.125*Pc;
PSSB1=0.0625*Pc;
Psaving1=([PDSBFC1-PSSB1]/PDSBFC1)*100;
disp(+'%',Psaving1,'% Power saving when u=0.5 is');
