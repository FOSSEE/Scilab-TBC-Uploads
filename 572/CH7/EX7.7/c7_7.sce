//Steam enters a turbine with a pressure of 30 bar, a temperature of 400C, a velocity of 160 m/s. Steam exits as saturated vapor at 100C with a velocity of 100 m/s. At steady state, the turbine develops work at a rate of 540 kJ per kg of steam flowing through the turbine. Heat transfer between the turbine and its surroundings occurs at an average outer surface temperature of 350 K. Develop a full accounting of the net exergy carried in by the steam, per unit mass of steam flowing. Neglect the change in potential energy between inlet and exit. Let T0 = 25C, p0=  1 atm.

//solution

//variable initialization
p1 = 30                                                 //pressure of entering steam in bar
t1 = 400                                                //temperature of entering steam in degree celcius
v1 = 160                                                //velocity of entering steam in m/s
t2 = 100                                                //temperature of exiting saturated vapor in degree celcius
v2 = 100                                                //velocity of exiting saturated vapor in m/s
W = 540                                                 //rate of work developed in kj per kg of steam
Tb = 350                                                //the temperature on the boundary where heat transfer occurs in kelvin
T0 = 25                                                 //in degree celcius
p0 = 1                                                  //in atm

//from table A-4
h1 = 3230.9                                             //in kj/kg
s1 = 6.9212                                             //in kj/kg.k
//from table A-2 
h2 = 2676.1                                             //in kj/kg
s2 = 7.3549                                             //in kj/kg.k

DELTAef = (h1-h2)-(T0+273)*(s1-s2)+(v1^2-v2^2)/(2*1000)              //The net exergy carried in per unit mass of steam flowing in kj/kg

//from example 6.6
Q = -22.6                                               //in kj/kg
Eq = (1-(T0+273)/Tb)*(Q)                                      //exergy transfer accompanying heat in kj/kg

Ed = (1-(T0+273)/Tb)*(Q)-W+(DELTAef)                          //The exergy destruction determined by rearranging the steady-state form of the exergy rate balanceff

printf('balance sheet')
printf('\nNet rate of exergy in:\t%f',DELTAef)
printf('\nDisposition of the exergy:')
printf('\n• Rate of exergy out')
printf('\nwork\t%f',W)
printf('\nheat transfer\t%f',-Eq)
printf('\n• Rate of exergy destruction\t%f',Ed)








