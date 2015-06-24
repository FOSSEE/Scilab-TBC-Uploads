//(12.5)   Two rigid, insulated tanks are interconnected by a valve. Initially 0.79 kmol of nitrogen at 2 bars and 250 K fills one tank. The other tank contains 0.21 kmol of oxygen at 1 bar and 300 K. The valve is opened and the gases are allowed to mix until a final equilibrium state is attained. During this process, there are no heat or work interactions between the tank contents and the surroundings. Determine (a) the final temperature of the mixture, in K, (b) the final pressure of the mixture, in atm, (c) the amount of entropy produced in the mixing process, in kJ/K

//solution

//variable initialization
nN2 = .79                                                                       //initial moles of nitrogen in kmol
pN2 = 2                                                                         //initial pressure of nitrogen in bars
TN2 = 250                                                                       //initial temperature of nitrogen in kelvin
nO2 = .21                                                                       //initial moles of oxygen in kmol
pO2 = 1                                                                         //initial pressure of oxygen in bars
TO2 = 300                                                                       //initial temperature of oxygen in kelvin
//part(a)
MN2 = 28.01                                                                     //molar mass of nitrogen in kg/kmol
MO2 = 32                                                                        //molar mass of oxygen in kg/kmol

//with the help of table A-20
cvbarN2 = MN2*.743                                                              //in kj/kmol.K
cvbarO2 = MO2*.656                                                              //in kj/kmol.K

T2 = (nN2*cvbarN2*TN2+nO2*cvbarO2*TO2)/(nN2*cvbarN2+nO2*cvbarO2)
printf('the final temperature of the mixture in kelvin is:  %f',T2)

//part(b)
p2 = [(nN2+nO2)*T2]/[nN2*TN2/pN2 + nO2*TO2/pO2]
printf('\n\nthe final pressure of the mixture in bar is:  %f',p2)

//part(c)
Rbar = 8.314                                                                    //universal gas constant
cpbarN2 = cvbarN2 + Rbar
cpbarO2 = cvbarO2 + Rbar

yN2 = nN2/(nN2+nO2)                                                             //mole fraction of N2
yO2 = nO2/(nN2+nO2)                                                             //mole fraction of O2

sigma = nN2*(cpbarN2*log(T2/TN2)-Rbar*log(yN2*p2/pN2)) + nO2*(cpbarO2*log(T2/TO2)-Rbar*log(yO2*p2/pO2))
printf('\n\nthe amount of entropy produced in the mixing process, in kJ/K is:  %f',sigma)



























