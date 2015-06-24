// Initilization of variables
v=60 // km/hr // velocity of the train
d1=15 // km // Distance travelled by the local train from the velocity-time graph (here d1= Area OED)
d2=12 // km // from the velocity-time graph (here d2= Area OABB')
d3=3 // km // from the velocity-time graph (here d3= Area BB'C)
// Calculations
t_1=d2/v // hr // time of travel for first 12 kms
t_2=(2*d3)/v // hr // time of for next 3 kms
// Total time of travel for passenger train is given by eq'n
t=t_1+t_2 // hr
// Now time of travel of the local train (let it be T) is given as,
T=2*t // hr
V_max=(2*d1)/T // km/hr
// Results
clc
printf('The maximum speed of the local train is %f km/hr \n',V_max)
