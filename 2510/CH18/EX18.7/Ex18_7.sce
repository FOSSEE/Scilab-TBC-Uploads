
//Variable declaration:
F = 5000                        //Mass flow rate of NaOH (lb/h)
xF = 20/100                     //Old concentration of NaOH solution
TF = 100                        //Feed temperature ( F)
xL = 40/100                     //New concentration of NaOH solution
xv = 0                          //Vapour concentration at x
yv = 0                          //Vapour concentration at y
T1 = 198                        //Boiling temperature of solution in the evaporator ( F)
T2 = 125                        //Saturated steam temperature ( F)
U = 400                         //Overall heat transfer coefficient (Btu/h.ft^2. F)
Ts = 228                        //Steam temperature ( F)

//Calculation:
//From steam tables at 228 F and 5 psig:
hS = 1156                       //Enthalpy of steam (Btu/lb)
hC = 196                        //Enthalpy of condensate (Btu/lb)
hV = hS-hC                      //Enthalpy of vapour (Btu/lb)
Tw = 125.4                      //Boiling point of water at 4 in Hg absolute ( F)
hS2 = 1116                      //Enthalpy of saturated steam at 125 F (Btu/lb)
hs = 0.46                       //Heat capacity of superheated steam (Btu/lb. F)
//From figure 18.3:
hF = 55                         //Enthalpy of feed (Btu/lb)
hL = 177                        //Enthalpy of liquor (Btu/lb)
L = F*xF/xL                     //Mass of liquor (lb)
V = L                           //Mass of vapour (lb)
hV = hS2+hs*(T1-T2)             //Enthalpy of vapour leaving the solution (Btu/lb)
S = (V*hV+L*hL-F*hF)/(hS-hC)    //Mass flow rate of steam (lb/h)
Q = S*(hS-hC)                   //Total heat requirement (Btu)
A = Q/(U*(Ts-T1))               //Required heat transfer area (ft^2)
S = round(S*10**-1)/10**-1

//Result:
printf("The steam flow rate is : %f lb/h .",S)
printf("The required heat transfer area is : %.0f ft^2 .",A)
