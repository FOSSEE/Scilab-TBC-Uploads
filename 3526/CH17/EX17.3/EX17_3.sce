clc;funcprot(0);//EXAMPLE 17.3
//page 530
// Initialisation of Variables
rho1=19.3;...........//Density of pure Tungsten in g/cm^3
rho2=10.49;............//Density of pure Silver in g/cm^3
f1=0.75;..............//Volume fraction of Tungsten 
f2=0.25;...........//Volume fraction of Silver and pores
//Calculations
per=((f2*rho2)/((f2*rho2)+(f1*rho1)))*100;.........//Percentage weight of silver 
disp(per,"Percentage Weight of Silver:")
