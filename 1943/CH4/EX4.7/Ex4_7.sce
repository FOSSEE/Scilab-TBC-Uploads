
clc
clear
//Input data
CO21=9.7;//Carbondioxide gas analysis before the air preheater 
CO22=9.2;//Carbondioxide gas analysis after the air preheater
O21=4.0;//Oxygen gas analysis before the air preheater
O22=4.9;//Oxygen gas analysis after the air preheater
N21=86.3;//Nitrogen gas analysis before the air preheater
N22=85.9;//Nitrogen gas analysis after the air preheater
C=72;//The coal used shows the carbon percentage by mass in %

//Calculations
W1=[(3.04)*(N21/100)*(C/100)]/[(CO21/100)];//Before air preheater in kg air/kg fuel
W2=[(3.04)*(N22/100)*(C/100)]/[(CO22/100)];//After air preheater in kg air/kg fuel
A=W2-W1;//Air leakage in kg air/kg fuel

//Output
printf('The air leakage into the air preheater per kg of coal fired is %3.0f kg air/kg fuel',A)
