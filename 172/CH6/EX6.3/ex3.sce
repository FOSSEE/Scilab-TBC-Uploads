//example 3
//rate of flow of water
clear
clc
hir=441.89 //in kJ/kg for refrigerant using steam table 
her=249.10 //in kJ/kg for refrigerant using steam table
hiw=42 //in kJ/kg for water using steam table
hew=83.95 //in kJ/kg for water using steam table
mr=0.2 //the rate at which refrigerant enters the condenser in kg/s
mw=mr*(hir-her)/(hew-hiw) //rate of flow of water in kg/s
printf("\n hence,the rate at which cooling water flows thorugh the condenser is mw=%.3f kg/s. \n", mw)