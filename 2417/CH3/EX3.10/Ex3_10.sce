clear;
clc;
printf("\t\t\tProblem Number 3.10\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.10 (page no. 105) 
// Solution

Cp=0.22; //Unit:Btu/(LBm*R) //Specific heat for constant pressure process
Cv=0.17; //Unit:Btu/(LBm*R) //Specific heat for constant volume process
q=800/10; //data given:800 Btu as heat is added to 10 LBm //Unit:Btu/LBm
T1=100; //Unit:Fahrenheit //Initial temperature //T2=Final temperature
//For a non-flow,constant pressure process
//q=deltah=h2-h1=Cp(T2-T1) //deltah=change in enthalpy
//deltaT=T2-T1;
deltaT=q/Cp; //Fahrenheit  //change in temperature
T2=deltaT+T1; //Fahrenheit  //final temperature
//For a constant volume pressure
//u2-u1=Change in internal energy //w=workdone
//q-w=u2-u1
//-w=(u2-u1)-q = Cv*(T2-T1)-q
w=-(Cv*(T2-T1)-q); //Unit:Btu/lbm //workdone
printf("%f Btu/lbm work is taken out of the system due to workdone by gas\n",w);
printf("As there is 10 lbm in the system\n")
printf("%f Btu work is taken out of the system due to workdone by gas\n",w*10);
