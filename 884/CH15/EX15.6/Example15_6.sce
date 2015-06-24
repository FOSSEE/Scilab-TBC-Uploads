// Computation of pH of solutions for solutions of given concentrations

clear;
clc;

printf("\t Example 15.6\n");

//for HCL solution

ConcHCl=1*10^-3;//Concentration of HCl solution, M
H=ConcHCl;//Concentration of [H+] ion after ionisation of HCl
pH=-log10(H);
printf("\t the pH of the HCl solution is : %4.2f \n",pH);

//for Ba(OH)2 solution

ConcBaOH2=0.02;//Concentration of Ba(OH)2 solution, M
OH=ConcBaOH2*2;//Concentration of [OH-] ion after ionisation of Ba(OH)2 as two ions are generated per one molecule of Ba(OH)2
pOH=-log10(OH);
pH2=14-pOH;
printf("\t the pH of the Ba(OH)2 solution is : %4.2f \n",pH2);

//End
