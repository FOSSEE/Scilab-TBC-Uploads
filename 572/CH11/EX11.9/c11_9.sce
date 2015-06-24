//(11.9)  For the case of Example 11.8, determine (a) the rate of entropy production, in and (b) the isentropic turbine efficiency.

//solution

//part(a)
//With values from Table A-23
sT2bar = 185.775                                                                //in kj/(kmol.K)
sT1bar = 191.682                                                                //in kj/(kmol.K)

Rbar = 8.314                                                                    //universal gas constant
M = 28                                                                          //molar mass in kg/kmol 
p2 = 40                                                                         //in bar
p1 = 100                                                                        //in bar

S2StarBarMinusS1StarBar = sT2bar-sT1bar-Rbar*log(p2/p1)                         //The change in specific entropy in kj/(kmol.K)

Term1 = .21
Term2 = .14

sigmacvdot = (1/M)*(S2StarBarMinusS1StarBar-Rbar*(Term2-Term1))
printf('the rate of entropy production in kj/kg.K is:  %f',sigmacvdot)

//part(b)
//From Table A-23,
h2starbar = 6654                                                                //in kj/kmol
h1starbar = 8723                                                                //in kj/kmol
Tc = 126                                                                        //critical temperature in kelvin
Term2 = .36
Term1 = .5

wcvdots = (1/M)*[h1starbar-h2starbar-Rbar*Tc*(Term1-Term2)]                     //isentropic work in kj/kg
wcvdot = 50.1                                                                   //from example 11.8

etat = wcvdot/wcvdots                                                           //turbine efficiency
printf('\nthe isentropic turbine efficiency is: %f',etat)













