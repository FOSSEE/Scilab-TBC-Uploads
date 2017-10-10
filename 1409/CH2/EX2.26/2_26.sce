clc;
//Page no:2-34
//Example-2.26
//Given carrier power=400W and modulation index=0.75
Pc=400;
u=0.75;
PDSBFC=Pc*(1+(u^2/2));
PDSBSC=(Pc*u^2)/2;
PSSB=(Pc*u^2)/4;
disp(+'W',PDSBFC,'PDSBFC=');
disp(+'W',PDSBSC,'PDSBSC=');
disp(+'W',PSSB,'PSSB=');
