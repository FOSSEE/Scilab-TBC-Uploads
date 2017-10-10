clc;funcprot(0);//EXAMPLE 17.2
//page 528
// Initialisation of Variables
per1=75;..............//Percent Weight of WC 
per2=15;..............//Percent Weight of TiC
per3=5;...............//Percent Weight of TaC
per4=5;...............//Percent Weight of Co
rho1=15.77;...........//Density of WC in g/cm^3
rho2=4.94;............//Density of TiC in g/cm^3
rho3=14.5;............//Density of TaC in g/cm^3
rho4=8.90;............//Density of Co in g/cm^3
//Calculations
f1=(per1/rho1)/((per1/rho1)+(per2/rho2)+(per3/rho3)+(per4/rho4));.......//Volume fraction of WC 
f2=(per2/rho2)/((per1/rho1)+(per2/rho2)+(per3/rho3)+(per4/rho4));.....//Volume fraction of Tic
f3=(per3/rho3)/((per1/rho1)+(per2/rho2)+(per3/rho3)+(per4/rho4));.....//Volume fraction of Tac
f4=(per4/rho4)/((per1/rho1)+(per2/rho2)+(per3/rho3)+(per4/rho4));.....//Volume fraction of Co
rho=(f1*rho1)+(f2*rho2)+(f3*rho3)+(f4*rho4);........//Density of composite in g/cm^3
disp(rho,"Density of composite in g/cm^3:")
