//Chapter 3_Semoconductor Devices Fundamentals
//Caption: Resistivity of Cu
//Example3.5:The resistivity of metal is given by p=1/nqu, where n is number of electrons per cubic meter, u is mobility ,a nd q is electronic charge. Determine the resistivit of copper at room temperature. Given n=8.5*10^28 per cubic meter, u=3.2*10^-3 m^2/V-sec, at room temperature.
//Solution:
q=1.6*10^-19;
n=8.5*10^28;
u=3.2*10^-3;
p=1/(n*q*u);
disp('resistivity of the copper is :')
disp('ohm-meter',p)
//  2.298D-08  means 2.298*10^-8