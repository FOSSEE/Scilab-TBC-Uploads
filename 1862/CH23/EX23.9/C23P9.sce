clear
clc
//to find work done on the system
//to find heat added to the system
//to find change in internal energy of the system

//Given:
//refer to figure 23-21 from page no. 534
//number of moles
n = 0.75//in mol
//pressures at corresponding points
PA = 3.2e3//in Pa
PB = 1.2e3//in Pa
//volume at corresponding point
VA = 0.21//in m^3
//molar gas constant
R = 8.31//in J/mol.K
//value of constants
Cv = 20.8//in J/mol.K
Cp = 29.1//in J/mol.K

//Solution:
//applying laws of thermodynamics
//using ideal gas law
//temperature at A
TA = (PA*VA)/(n*R)//in K
////temperature at B
TB = (PB*VA)/(n*R)//in K //since VA=VB
//volume at C
VC = (n*R*TA)/(PB)//in m^3 //since TC = TA and PC = PB
//during process A-B
//applying constant volume relationship
//heat added to the system
//redefining TA AND TB
TA = 108//in K
TB = 40//in K
Q1 = n*Cv*(TB-TA)//in J
//work done on the system
W1 = 0//in J
//change in internal energy of the system
delta_Eint1 = Q1+W1//in J

//during process B-C
//applying constant pressure relationship
//heat added to the system
Q2 = n*Cp*(TA-TB)//in J //since TC = TA
//work done on the system
W2 = -PB*(VC-VA)//in J //since VB = VA
//change in internal energy of the system
delta_Eint2 = Q2+W2//in J

//during process C-A
//applying isothermal relationship
//work done on the system
W3 = -n*R*TA*(log(VA/VC))//in J
//change in internal energy of the system
delta_Eint3 = 0//in J
//heat added to the system
Q3 = delta_Eint3-W3 //in J
//delta_Eint1 = nearfloat("succ",-1061)
//Q2 = nearfloat("succ",1480)
//delta_Eint2 = nearfloat("succ",1060)
//W3 = nearfloat("succ",660)
//Q3 = nearfloat("succ",-661)
//totol work done during process
W = W1+W2+W3//in J
//total change in internal energy during process
delta_Eint = delta_Eint1+delta_Eint2+delta_Eint3//in J
TA = round(TA)
//value of Q2,delta_Eint2,delta_E slightly varies than book.But answer by scilab is same as that of calculator answer

printf ("\n\n Temperature at A TA = \n\n %3i K" ,TA);
printf ("\n\n Temperature at B TB = \n\n %3i K" ,TB);
printf ("\n\n Volume at C VC = \n\n %.2f m^3" ,VC);
printf ("\n\n During process A-B");
printf ("\n\n Heat added to the system Q1 = \n\n %4i J" ,Q1);
printf ("\n\n Work done on the system W1 = \n\n %3i J" ,W1);
printf ("\n\n Change in internal energy of the system delta_Eint1 = \n\n %4i J" ,delta_Eint1);
printf ("\n\n During process B-C");
printf ("\n\n Heat added to the system Q2 = \n\n %4i J" ,Q2);
printf ("\n\n Work done on the system W2 = \n\n %3i J" ,W2);
printf ("\n\n Change in internal energy of the system delta_Eint2 = \n\n %4i J" ,delta_Eint2);
printf ("\n\n During process C-A");
printf ("\n\n Heat added to the system Q3 = \n\n %4i J" ,Q3);
printf ("\n\n Work done on the system W3 = \n\n %3i J" ,W3);
printf ("\n\n Change in internal energy of the system delta_Eint3 = \n\n %4i J" ,delta_Eint3);
printf ("\n\n Totol work done during process W = \n\n %3i J" ,W);
printf ("\n\n Total change in internal energy during process delta_Eint = \n\n %4i J" ,delta_Eint);
