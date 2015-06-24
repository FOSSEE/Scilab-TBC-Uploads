//(6.11)    A steam turbine operates at steady state with inlet conditions of p1 = 5 bar, T1=  320C. Steam leaves the turbine at a pressure of 1 bar. There is no significant heat transfer between the turbine and its surroundings, and kinetic and potential energy changes between inlet and exit are negligible. If the isentropic turbine efficiency is 75%, determine the work developed per unit mass of steam flowing through the turbine, in kJ/kg.


//solution

//variable initialization
P1 = 1                                                         //inlet pressure in bar
T1 = 593                                                       //inlet temperature in kelvin
P2 = 1                                                         //exit pressure in bar
eta = .75                                                      //turbine efficiency

//from table A-4
h1 = 3105.6                                                     //in Kj/kg
s1 = 7.5308                                                     //in kj/kg.k
//from table A-4 at 1 bar
h2s = 2743                                                     //in kj/kg
w = eta*(h1 - h2s)
printf('the work developed per unit mass of steam flowing through in kj/kg is : \n\t w = %f',w)