//Caption:In single phase transformer Calculate (a)The maximum flux density in the core and (b)induced emf in the secondary
//Exam:3.8
clc;
clear;
close;
N_1=80;//Primary turns
N_2=240;//secondary turns
f=50;//Supply frequency(in Hz)
E_1=240;//Supply voltage(in Volts)
F_max=E_1/(4.44*f*N_1);//Maximum value of the flux in the core
a=200;//Cross sectional area of core(in cm^2)
A=a*10^-4;//Cross sectional area of core(in m^2)
B_max=F_max/A;//Peak value of flux density in the core(in T)
disp(B_max,'Peak value of flux density in the core(in T)=');
E_2=E_1*(N_2/N_1);//Induced emf in the secondary winding(in Volts)
disp(E_2,'Induced emf in the secondary winding(in Volts)=');