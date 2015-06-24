clc
clear
//Input data
T1=(50+273)//Initial temperature of the liquid in K
M1=0.1//Mass of water in kg
T2=(40+273)//Final temperature of the liquid in K
t1=(5*60)//Time taken by the water to cool from 50 degrees C to 40 degrees C
M2=0.085//Mass of the liquid in kg
M=0.1//Mass of the calorimeter in kg
t2=(2*60)//Time taken by the liquid to cool from 50 degrees C to 40 degrees C
S=385//Specific heat of the calorimeter in J/kg.K
S1=4190//Specific heat of the water in J/kg.K

//Calculations
S2=(((M1*S1+M*S)*(t2/t1))-(M*S))/M2//Specific heat of the liquid in J/kg.K

//Output
printf('Specific heat of the liquid is %3.0f J/kg.K',S2)
