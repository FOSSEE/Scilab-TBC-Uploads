// (4.8)   The electronic components of a computer are cooled by air flowing through a fan mounted at the inlet of the electronics enclosure. At steady state, air enters at 20C, 1 atm. For noise control, the velocity of the entering air cannot exceed 1.3 m/s. For temperature control, the temperature of the air at the exit cannot exceed 32C. The electronic components and fan receive, respectively, 80 W and 18 W of electric power. Determine the smallest fan inlet diameter, in cm, for which the limits on the entering air velocity and exit air temperature are met.

//solution

//variable initialization
T1 = 293                               //temperature of entering air in kelvin
P1 = 1.01325*(10^5)                     //pressure of entering air in pascal
V1max = 1.3                           //maximum velocity of entering air in m/s
T2max = 305                            //maximum temperature at the exit in kelvin 
Pec = -80                              //power received by elecrtonic components in watt
Pf = -18                               //power received by fan in watt

R = 8.314                             //universal gas constant in SI units
M = 28.97*(10^(-3))                             //molar mass of air in kg
Qcvdot = 0                            //Heat transfer from the outer surface of the electronics enclosure to the surroundings is negligible.
Cp = 1.005*(10^3)                            //in j/Kg.k

Wcvdot = Pec + Pf                     //total electric power provided to the electronic components and fan in watt
mdotmin = (-Wcvdot)/(Cp*(T2max-T1))   //minimum mass flow rate
v1 = ((R/M)*T1)/P1                    //specific volume
A1min = (mdotmin*v1)/V1max
D1min = sqrt(4*A1min/(%pi))
printf('the smallest fan inlet diameter in cm is:\n\t D1min = %f',D1min*100)