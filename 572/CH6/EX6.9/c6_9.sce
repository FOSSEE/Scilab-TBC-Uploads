// (6.9)   Air undergoes an isentropic process from p1 = 1 bar, T1=  300K to a final state where the temperature is T2=  650K.,Employing the ideal gas model, determine the final pressure p2, in atm. Solve using (a) pr data from Table A-22 (b) Interactive Thermodynamics: IT, and (c) a constant specific heat ratio k evaluated at the mean temperature, 475K, from Table A-20.

//solution

//variable initialization
P1 = 1                                    //initial pressure in bar
T1 = 300                                  //initial temperature in kelvin
T2 = 650                                  //final temperature in kelvin

//part(a)
//from table A-22
pr2 = 21.86                               
pr1 = 1.3860
p2 = P1*(pr2/pr1)
printf('part(a) P2 in bar = %f ',p2)
//part(b)
printf('\n part(b) IT software problem')
//part(c)
k = 1.39                                 //from table A-20
p2a = P1*((T2/T1)^(k/(k-1)))
printf('\n part(c) P2a in bar = %f',p2a)