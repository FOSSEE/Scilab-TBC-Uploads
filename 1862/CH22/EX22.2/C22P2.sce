clear
clc
//to find number of moles of oxygen
//to find number  of molecules of oxygen
//to find approximate rate at which oxygen molecule strike one face of the box

//Given:
//refer to figure 22-2 from page no. 499
//length of edge of cubical box
L = 10//in cm
//pressure of oxygen
p = 1.0//in atm
//temperature of oxygen
T = 300//in K
//molar gas constant
R = 8.31//in J/mol.K
//Avogadro constant
NA = 6.02e23//in molecules/mol

//Solution:
////assumong oxygen as ideal gas
//applying ideal gas equations
//volume of box
V = ((L*10^-2)^3)//in m^3
//number  of moles of oxygen
n = ((p*1.01*10^5)*V)/(R*T)//taking p into Pa
//number  of molecules of oxygen
N = n*NA
N = nearfloat("succ",2.5e22)
//refer to table 22-1
//root mean square speed of oxygen
vrms = 483//in m/s
//approximate rate at which oxygen molecule strike one face of the box
Rate = (N*vrms)/(6*(L*10^-2))//in collisions/s

printf ("\n\n Number  of moles of oxygen n = \n\n %.3f mol" ,n);
printf ("\n\n Number  of molecules of oxygen N = \n\n %.1e molecules" ,N);
printf ("\n\n Root mean square speed of oxygen vrms = \n\n %3i m/s" ,vrms);
printf ("\n\n Approximate rate at which oxygen molecule strike one face of the box Rate = \n\n %.1e collisions/s" ,Rate);
