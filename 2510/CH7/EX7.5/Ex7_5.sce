//Variable declaration:
TC = 27.0                   //Inside temperature of walls (°C)
TH = 68.7                   //Outside temperature of walls (°C)
LC = 6*0.0254               //Thickness of concrete (m)
LB = 8*0.0254               //Thickness of cork-board (m)
LW = 1*0.0254               //Thickness of wood (m)
kC = 0.762                  //Thermal conductivity of concrete (W/m.K)
kB = 0.0433                 //Thermal conductivity of cork-board (W/m.K)
kW = 0.151                  //Thermal conductivity of wood (W/m.K)

//Calculation:
RC = LC/kC                  //Thermal resistance of concrete (K/W)
RB = LB/kB                  //Thermal resistance of cork-board (K/W)
RW = LW/kW                  //Thermal resistance of wood (K/W)
Q = (TC-TH)/(RC+RB+RW)      //Heat transfer rate across the wall (W)
T = -(Q*RW-TC)              //Interface temperature between wood and cork-board (K)

//Result:
printf("The heat transfer rate across the wall is : %.3f  W.",Q)
printf("The interface temperature between wood and cork-board is : %.1f  °C.",T)
printf("The interface temperature between wood and cork-board is : %.1f  K.",T+273)
