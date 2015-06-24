clc;
clear;
//Example6.1
T=380       //B.P of solution[K]
T_dash=373      //B.P of water [K]
BPE=T-T_dash        //Boiling point elevation in [K]
Ts=399      //Saturating temperature in [K]
DF=Ts-T     //Driving force in [K]
printf("\nBoiling point of elevation of the solution is %d K \n",BPE);
printf("\nDriving forve for heat transfer is %d K \n",DF)
