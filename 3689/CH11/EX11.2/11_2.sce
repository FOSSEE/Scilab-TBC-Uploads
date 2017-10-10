////Variable Declaration
E0r1 = -0.877       //Std Electrod potential for Rx2 : Al3+ + 3e- ------> Al (s)                   
E0r2 = -1.660       //Std Electrod potential for Rx2 : Al3+ + 3e- ------> Al (s)
E0r3 = +0.071       //Std Electrod potential for Rx3 : AgBr (s) + e- ------> Ag(s) +Br- (aq.)

//Calculations
//3Fe(OH)2 (s)+ 2Al (s)  <---------> 3Fe (s)  + 6(OH-) + 2Al3+
E0a = 3*E0r1 + (-2)*E0r2
//Fe (s) + 2OH- +   2AgBr (s) -------> Fe(OH)2 (s)  + 2Ag(s) +  2Br- (aq.)
E0b = -E0r1 + (2)*E0r3

//Results
printf("\n %5.3f %5.3f",E0a,E0b)

