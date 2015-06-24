
clc
clear
//Input data
O=35;//The output of the fluidized bed combustion system in MW
n=0.80;//Efficiency of the fluidized bed combustion system 
H=26;//The heating value of coal in MJ/kg
S=3.6;//Sulphur content in the coal in %
C=3;//The calcium sulphur ratio 
Ca=85;//The amount of calcium carbonate in the limestone in %
CaCO3=100;//The molecular weight of CaCO3

//Calculations
Cb=O/(n*H);//Coal burning rate in kg/s
Cb1=Cb*3600;//Coal burning rate in kg/h
Sf=(Cb1*(S/100))/32;//Flow rate of sulphur in Kmol/h
Cf=Sf*C;//The flow rate of calcium in Kmol/h
Caf=Cf*CaCO3;//Mass flow rate of CaCO3 in kg/h
L=Caf/(Ca/100);//Mass flow rate of limestone in kg/h

//Output
printf('The required flow rate of limestone is %3.1f kg/h ',L)
