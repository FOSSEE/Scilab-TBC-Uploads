clc;
//Page no:2-34
//Example-2.27
u=0.75;
//PDSBFC=Pc*(1+(u^2/2))
PDSBFC=Pc*(1+(u^2/2));
PSSB=(Pc*u^2)/4;
Psaving=((PDSBFC-PSSB)/PDSBFC)*100;
disp(+'%',Psaving,'Percentage power saving=');
