////
//Varialble Declaration
Tn = 353.24       //normal boiling point of Benzene, K
pi = 1.19e4       //Vapor pressure of benzene at 20°C, Pa
DHf = 9.95        //Latent heat of fusion, kJ/mol
pv443 = 137.      //Vapor pressure of benzene at -44.3°C, Pa
R = 8.314         //Ideal Gas Constant, J/(mol.K)
Pf = 101325       //Std. atmospheric pressure, Pa
T20 = 293.15      //Temperature in K
P0 = 1.
Pl = 10000.
Ts = -44.3        //Temperature of solid benzene, °C

//Calculations
Ts = Ts + 273.15
//Part a

DHv = -(R*log(Pf/pi))/(1./Tn-1./T20)
//Part b

DSv = DHv/Tn
DHf = DHf*1e3
//Part c

Ttp = -DHf/(R*(log(Pl/P0)-log(pv443/P0)-(DHv+DHf)/(R*Ts)+DHv/(R*T20)))
Ptp = exp(-DHv/R*(1./Ttp-1./Tn))*101325

//Results
printf("\n Latent heat of vaporization of benzene at 20°C %4.1f kJ/mol",DHv/1000)

printf("\n Entropy Change of vaporization of benzene at 20°C %3.1f J/mol",DSv)

printf("\n Triple point temperature = %4.1f K for benzene",Ttp)

printf("\n Triple point pressure = %4.2e Pa for benzene",Ptp)

