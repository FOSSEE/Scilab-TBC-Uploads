
//Find the Amount of Heat needed to raise the temperature from 25 degree celsius to 35 degree celsius.

//Example 27.1

clear;

clc;

Ao=0.32;//Mass of Oxygen kept in gram

W=32;//Molecular weight of Oxygen in g/mol

n=Ao/W;//Number of moles of oxygen

Cv=20;//Molar Heat Capacity of Oxygen at constant volume

T1=25;//Initial Temperature

T2=35;//Final Temperature

delT=T2-T1;//Change in Temperature

Q=n*Cv*delT;//Amount of Heat needed

printf("Amount of Heat required=%d joule",Q);
