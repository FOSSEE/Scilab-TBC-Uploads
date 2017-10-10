//Example 4.6.1
//Calculate the power op of an uplink transmitter
//Variables
clc
clear
Pr = -127
Gt = 50
Gr = 26
Lp = 207.2
Lta = 1.5
Lat = 0.5
Lpt = -2
Pin = 0-127

//Result
Pt = Pr - Gt - Gr + Lp + Lat + Lta - Lpt
printf("The transmitter output power is %f dBW \n",Pt)
Rainattenuation = 7
Ptrain = Pt + Rainattenuation
printf("The transmitter output power due to fading of rain is %f dBW",Ptrain)
