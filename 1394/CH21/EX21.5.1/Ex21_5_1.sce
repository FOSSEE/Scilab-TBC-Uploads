
clc
//initialization of variables
A = 0.01 // cm^2
l = 1 // cm
VA = 3 // cc
VB = 3 // cc
alphagas = 0.29 
alphaliquid = -1.3
x1 = 0.5
x2 = 0.5 
deltaT = 50 // Kelvin Thot-Tcold = 50
Tavg = 298 // kelvin
Dgas = 0.3 // cm^2/sec
Dliquid = 10^-5 // cm^2/sec
//calculations
deltaY = alphagas*x1*x2*deltaT/Tavg // Y1hot-Y1cold = DeltaY
deltaX = alphaliquid*x1*x2*deltaT/Tavg// X1hot-X1cold = DeltaX
Beta = (A/l)*((1/VA)+(1/VB))//cm^-2
BetaDgasinverse = 1/(Beta*Dgas)// sec
BetaDliquidinverse = (1/(Beta*Dliquid))/(365*24*60*60)
//Results
printf("The seperation achieved for gas is  %.3f",deltaY)
printf("\nThe seperation achieved for liquid is  %.2f",deltaY)
printf("\nThe time taken for seperation for gas will be %.f seconds",BetaDgasinverse)
printf("\nThe time taken for seperation for liquid will be %.1f year",BetaDliquidinverse)
