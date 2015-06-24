
clc
//initialisation of variables
T3=2060//R
Tx=1318 //Btu/lbm
Cp=0.24 //lbm
Wnet=107.2 //Btu/lbm
//CALCULATIONS
qH=Cp*(T3-Tx)//Btu/lbm
Nth=(Wnet/qH)*100//per-cent
//RESULTS
printf('The thermal efficiency of the cycle =% f per-cent',Nth)
