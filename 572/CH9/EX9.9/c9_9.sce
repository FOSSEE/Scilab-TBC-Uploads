//(9.9)  Air is compressed from 100 kPa, 300 K to 1000 kPa in a two-stage compressor with intercooling between stages. The intercooler pressure is 300 kPa. The air is cooled back to 300 K in the intercooler before entering the second compressor stage. Each compressor stage is isentropic. For steady-state operation and negligible changes in kinetic and potential energy from inlet to exit, determine (a) the temperature at the exit of the second compressor stage and (b) the total compressor work input per unit of mass flow. (c) Repeat for a single stage of compression from the given inlet state to the final pressure


//solution

//variable initialization
T1 = 300                                                                        //in kelvin
p1 = 100                                                                        //in kpa
p2 = 1000                                                                       //in kpa
p3 = p2
pc = 300                                                                        //in kpa
pd = 300                                                                        //in kpa
Td = 300                                                                        //in kelvin


//part(a)
//from table A-22
prd = 1.386
pr2 = prd*(p2/pd)
//Interpolating in Table A-22, we get
T2 = 422                                                                        //in kelvin
h2 = 423.8                                                                      //in kj/kg
printf('the temperature at the exit of the second compressor stage  is:  %f',T2)

//part(b)
//From Table A-22 at T1 = 300
h1 = 300.19                                                                     //in kj/kg
//Since Td = T1,
hd = 300.19                                                                     //in kj/kg
//with pr data from Table A-22 together
pr1 = 1.386
prc = pr1*(pc/p1)
//Interpolating in Table A-22, we obtain
hc = 411.3                                                                      //in kj/kg

wcdot = (hc-h1)+(h2-hd)                                                         //the total compressor work per unit of mass in kj/kg
printf('\n\nthe total compressor work input per unit of mass flow is:  %f',wcdot)

//part(c)
pr3 = pr1*(p3/p1)
//Interpolating in Table A-22, we get
T3 = 574                                                                        //in kelvin
h3 = 579.9                                                                      //in kj/kg

wcdot = h3-h1                                                                   //The work input for a single stage of compression in kj/kg
printf('\n\nfor a single stage of compression, the temperature at the exit state is:  %f ',T3)
printf('\nfor a single stage of compression, the work input is:  %f',wcdot)











