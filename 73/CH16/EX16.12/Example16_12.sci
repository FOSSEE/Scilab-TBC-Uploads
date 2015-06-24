//Chapter 16_Bipolar and MOS Digital Gate Circuits
//Caption : NMOS operating region
//Example 16.12: A NMOS transistor with K=20uA/V^2 and Vth=1.5V is operated at Vgs=5V and Ids=100uA. Determine the region of the operation on I-V characteristics and find Vds.
//Solution:
clear;
clc;
K=20*10^-6;
Vgs=5;
Vth=1.5;
Ids=100*10^-6;
Id=(K/2)*(Vgs-Vth)^2;
disp('uA',Id/10^-6,'drain current in saturation region')
if Id>Ids then
    disp('region of operation of NMOS transistor on I-V characteristics is LINEAR REGION')
end
//since NMOS lies in LINEAR REGION so Ids=(K/2)*(2*(Vgs-Vth)*Vds-Vds^2); thus substituting the values we have
//100*10^-6==(20*10^-6/2)*(2*(5-1.5)*Vds-Vds^2);
//so Vds^2-7*Vds+10=0; equivalent to quadrattic  equation of form aX^2+b*X+c=0 
Vds=poly(0,'Vds');
p=Vds^2-7*Vds+10;//equation whose roots has to be found
z=roots(p);
z=real(z)
  if (z(1)<(Vgs-Vth)) then    
    disp('Volt',z(1),'drain to source voltage(Vds) in this Linear Region is:')
elseif (z(2)<(Vgs-Vth)) then
    disp('Volt',z(2),'drain to source voltage(Vds) in this Linear Region is:')
end