//Chapter-3, Illustration 4, Page 142
//Title: Internal Combustion Engines
//=============================================================================
clc
clear

//INPUT DATA
Hm=21;//Mean height of indicator diagram in mm
isn=27;//indicator spring number in kN/(m^2)/mm
Vs=14;//Swept volume in litres
N=6.6;//Speed of engine in rev/s
Pe=77;//Effective brake load in kg
Re=0.7;//Effective vrake radius in m
mf=0.002;//fuel consumed in kg/s
CV=44000;//Calorific value of fuel in kJ/kg
mc=0.15;//cooling water circulation in kg/s
Ti=311;//cooling water inlet temperature in K
To=344;//cooling water outlet temperature in K
C=4.18;//specific heat capacity of water in kJ/kg-K
Ee=33.6;//Energy to exhaust gases in kJ/s
g=9.81;//Acceleration due to geravity in m/(s^2)

//CALCULATIONS
imep=isn*Hm;//Indicated mean efective pressure in kN/(m^2)
IP=(imep*Vs*N)/(2000);//Indicated Power in kW
BP=(2*3.1415*N*g*Pe*Re)/1000;//Brake Power in kW
nM=(BP/IP)*100;//Mechanical efficiency
Ef=mf*CV;//Eneergy from fuel in kJ/s
Ec=mc*C*(To-Ti);//Energy to cooling water in kJ/s
Es=Ef-(BP+Ec+Ee);//Energy to surroundings in kJ/s
p=(BP*100)/Ef;//Energy to BP in %
q=(Ec*100)/Ef;//Energy to coolant in %
r=(Ee*100)/Ef;//Energy to exhaust in %
w=(Es*100)/Ef;//Energy to surroundings in %

//OUTPUT
mprintf('Indicated Power is %3.1f kW \n Brake Power is %3.0f kW \n Mechanical Efficiency is %3.0f percent \n \nENERGY BALANCE                    kJ/s      Percentage \nEnergy from fuel                 %3.0f          100\nEnergy to BP                     %3.0f         %3.0f\nEnergy to coolant                 %3.01f        %3.1f\nEnergy to exhaust                 %3.1f        %3.1f\nEnergy to surroundings, etc       %3.1f        %3.1f',IP,BP,nM,Ef,BP,p,Ec,q,Ee,r,Es,w)




//==============================END OF PROGRAM=================================
