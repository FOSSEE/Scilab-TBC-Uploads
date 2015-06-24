//Variable declaration:
t = 273                     //Standard temperature (K)
v = 0.0224                  //Volume of air occupied by 1 gmol of ideal gas (m^3)
V = 1100                    //Volume of heat exchanger (m^3)
T = 22+273                  //Temperature of heat exchanger (K)
x1 = 0.75                   //gmols of hydrocarbon leaking from the exchanger (gmol)

//Calculation:
n = V*(1/v)*(t/T)           //Total number of gmols of air in the room (gmol)
xHC = (x1/(n+x1))*10**6     //The mole fraction of hydrocarbon in the room (ppm)
ans = round((xHC*1000)*10**-1)/10**-1
//Result:
printf("1. The mole fraction of hydrocarbon in the room is : %f ppb .",ans)
