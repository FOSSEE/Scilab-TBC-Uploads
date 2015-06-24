clc
//Initialization of variables
Ug = 200 //ft/s
dg = 1.69/12 //ft
v = 1.57*(10^-4) //ft^2/s
Ut = 60 //ft/s
dt = 1.50/12 //ft
dG = 2.38*(10^-3) //slugs/ft^3
CdG = 0.25
CdSG = 0.51
CdT = 0.50
Wg = 0.0992 //lb
Wt = 0.00551 //lb
// Calculations
Dg = 0.5*(dG)*(Ug^2)*(%pi/4)*(dg^2)*CdG
DSg = 0.5*(dG)*(Ug^2)*(%pi/4)*(dg^2)*CdSG
Dt = 0.5*(dG)*(Ut^2)*(%pi/4)*(dt^2)*CdT
DAG = Dg/Wg
DASG = DSg/Wg
DAT = Dt/Wt
// Results
printf(" the drag for standard golf ball is %.4f lb",Dg)
printf("\n the deceleration (relative to acceleration of gravity) for standard golf ball is %.4f",DAG)
printf("\n the drag for smooth golf ball is %.4f lb",DSg)
printf("\n the deceleration (relative to acceleration of gravity) for smooth golf ball is %.4f",DASG)
printf("\n the drag for standard table tennis ball is %.4f lb",Dt)
printf("\n the deceleration (relative to acceleration of gravity) for standard table tennis ball is %.4f ",DAT)
