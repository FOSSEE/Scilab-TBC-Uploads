//Variable declaration:
F = 5000                        //Mass of soltuion fed in the evaporator (lb)
xF = 2/100                      //Concentration of feed
xL = 5/100                      //Concentration of liquor
U = 280                         //Overall heat transfer coefficient (Btu/h.ft^2. F)
//From figure 18.1 & 18.3:
TF = 100                        //Feed temperature ( F)
TS = 227                        //Steam temperature ( F)
TV = 212                        //Vapour temperature ( F)
TL = 212                        //Liquor temperature ( F)
TC = 227                        //Condensate temperature ( F)

//Calculation:
//From steam tables:
hF = 68                         //Enthalpy of feed (Btu/lb)
hL = 180                        //Enthalpy of liquor (Btu/lb)
hV = 1150                       //Enthalpy of vapour (Btu/lb)
hS = 1156                       //Enthalpy of steam (Btu/lb)
hC = 195                        //Enthalpy of condensate (Btu/lb)
s1 = F*xF                       //Total solids in feed (lb)
w = F-s1                        //Total water in feed (lb)
s2 = F*xF                       //Total solids in liquor (lb)
L = s2/xL                       //Total water in liquor (lb)
V = F-L                         //Overall balance (lb)
S = (V*hV+L*hL-F*hF)/(hS-hC)    //Mass of steam (lb)
Q = S*(hS-hC)                   //Total heat requirement (Btu)
A = Q/(U*(TS-TL))               //Required surface aea (ft^2)

//Result:
printf("The mass of vapor produced is : %.0f lb .",V)
printf("The total mass of steam required is : %.0f lb .",S)
printf("The surface area required is : %.0f ft^2 .",A)
