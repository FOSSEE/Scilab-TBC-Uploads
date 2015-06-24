//Variable declaration:
F = 10000                       //Mass flow rate of NaOH (lb/h)
C1 = 10                         //Old concentration of NaOH solution (%)
C2 = 75                         //New concentration of NaOH solution (%)
h1 = 1150                       //Enthalpy of saturated steam at 14.7 psia (Btu/lb)
U = 500                         //Overall heat transfer coefficient (Btu/h.ft^2. F)
T1 = 212                        //Absolute temperature of evaporator ( F)
T2 = 340                        //Saturated steam temperature ( F)

//Calculation:
L = F*(C1/100)/(C2/100)         //Flow rate of steam leaving the evaporator (lb/h)
V = F-L                         //Overall material balance (lb/h)
//From figure 18.3:
hF = 81                         //Enthalpy of solution entering the unit (Btu/lb)
hL = 395                        //Enthalpy of the 75% NaOH solution (Btu/lb)
Q = round(V)*h1+round(L)*hL-F*hF    //Evaporator heat required (Btu/h)
A = Q/(U*(T2-T1))               //Area of the evaporaor (ft^2)
Q = round(Q*10**-2)/10**-2

//Result:
printf("The heat transfer rate required for the evaporator is : %f Btu/h ",Q)
printf("The area requirement in the evaporator is : %.1f ft^2 .",A)
