clear ;
clc;
// Example 11.2
printf('Example 11.2\n\n');
printf('Page No. 313\n\n');

//given
p1 = 10;//heat-sensitive liquor percen
p2 = 50;//heat-sensitive liquor percent
m = 0.28;// mass rate in kg/s
t = 150;// time in h per week

// This question does not contain any calculation part in it.
I = [8250 1150 14850 16500];//Installation cost in Pound
A = [69300 36800 23600 24600];// Annual steam cost in Pound
A_S = [A(1)-A(1) A(1)-A(2) A(1)-A(3) A(1)-A(4)];// Annual savings in Pound

printf('\t\t CAPITAL AND OPERATING COSTS OF EVAPORATION PLANT\n\n\t \t\tInstallation \t\t Annual \t\t Annual saving\n   Type \t\t\t  cost \t\t\tsteam cost \t\t(to single effect)\n \t \t\t  (Pound) \t\t  (Pound) \t\t   (Pound)\n\nSingle effect \t\t  %.0f \t\t\t  %.0f \t\t\     %.0f \nDouble effect \t\t  %.0f \t\t\t  %.0f \t\t\     %.0f \nTriple effect + \n(vapour compression) \t  %.0f \t\t  %.0f \t\t\     %.0f \nTriple effect \t\t  %.0f \t\t  %.0f \t\t\     %.0f \n\n\n',I(1),A(1),A_S(1),I(2),A(2),A_S(2),I(3),A(3),A_S(3),I(4),A(4),A_S(4))


printf(' The results enable the return on investment to be assessed by one of the standard economic procedures and the final selsction made.')

