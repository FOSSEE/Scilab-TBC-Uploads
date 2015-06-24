//Chapter-5,Example5_15_5,pg 5-44

//for an electron

e=1.6*10^-19                                 //electron charge

m_e=9.1*10^-31                                //mass of an electron

L=10^-9                                      //width of well

h=6.63*10^-34                                //Plank's constant

//the energy level are given by   En = n^2 *h^2/(8*m*L^2)

Ee1=(1^2)*(h^2)/(8*m_e*e*(L^2))                            //for   n = 1

Ee2=(2^2)*(h^2)/(8*m_e*e*(L^2))                            //for   n = 2

Ee3=(3^2)*(h^2)/(8*m_e*e*(L^2))                            //for   n = 3

printf('\n  FOR AN ELECTRON')
printf('\n  the lowest three energy states are obtained ')
printf('\n  for n = 1   Ee1 = %.4f eV',Ee1)
printf('\n  for n = 2   Ee2 = %.4f eV',Ee2)
printf('\n  for n = 3   Ee3 = %.4f eV',Ee3)


//for the grain of dust 

m=10^-9                                   //mass of grain of dust 

l=10^-4                                   //width of well

E1=(1^2)*(h^2)/(8*m*e*(l^2))                            //for   n = 1

E2=(2^2)*(h^2)/(8*m*e*(l^2))                            //for   n = 2

E3=(3^2)*(h^2)/(8*m*e*(l^2))                            //for   n = 3

printf('\n\n  FOR THE GRAIN OF DUST ')
printf('\n  the lowest three energy states are obtained ')
printf('\n  for n = 1   E1 = ')
disp(E1)
printf('  eV')
printf('\n  for n = 2   E2 = ')
disp(E2)
printf('  eV')
printf('\n  for n = 3   E3 = ')
disp(E3)
printf('  eV')

