//Chapter-12, Example 12.17, Page 533
//=============================================================================
clc
clear

//INPUT DATA
Tci=20;//Inlet temperature of water in degree C
Tco=50;//Outlet temperature of water in degree C
Th=120;//Temperature at which steam condenses in degree C
newTci=15;//New Inlet temperature of water in degree C

//CALCULATIONS
newTco=(((Tco-Tci)*(Th-newTci))/(Th-Tci))+newTci;//New outlet temperature of water in degree C

//OUTPUT
mprintf('New outlet temperature of water is %3.1f degree C',newTco)

//=================================END OF PROGRAM==============================
