clear ;
clc;

// Example 2.5
printf('Example 2.5\n\n');
//Page no. 54
// Solution

m_wt=192 ;//[kg]
d_sol=1.024*1000 ;//[kg/cubic metre]
// 1000L=1 cubic metre
c_sol=d_sol/1000 ;//[kg/L]
c_drug=c_sol*.412 ;//[kg/L]
printf('Concentration of drug in solution is %.3f kg/L .\n',c_drug);

Q=10.5 ;//[L/min]
Qmol=10.5*c_drug/m_wt ;//[kg mol/min]
printf(' Flow rate of drug is %.3f kg mol/min. \n',Qmol); 