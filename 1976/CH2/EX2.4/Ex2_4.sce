
//To determine the Load factor and suitable units for 24 hr operation of the plant
//Page 78
clc;
clear;

//Demands at Various Time Periods starting from 12PM to 12PM
D1=500*(10^3); 
D2=800*(10^3);
D3=2000*(10^3);
D4=1000*(10^3);
D5=2500*(10^3);
D6=2000*(10^3);
D7=1500*(10^3);
D8=1000*(10^3);

MD=D5; //Maximum Demand
//Time Periods of demands ststing from 12PM
T1=5;
T2=5;
T3=2;
T4=2;
T5=3;
T6=3;
T7=2;
T8=2;

//Total Energy Demand in 24hrs
TED=(T1*D1)+(T2*D2)+(T3*D3)+(D4*T4)+(T5*D5)+(D6*T6)+(D7*T7)+(T8*D8);

LF=TED*100/(24*MD);

printf('Since Maximum Demand is 2500 kW, 2 units 0f 1000W and one unit of 500W is required. Also for continuity of supply, A reserve of 1000W unit is required.\n')

C1000=3*1000*(10^3); //1000 unit 
C500=1*500*(10^3); //500 Unit

TCP=C1000+C500; //Total capacity of the plant
PCF=TED*100/(24*TCP); //Plant Capacity Factor

//Operating Schedule, Units operated can be seen in the textbook
G1=500*(10^3);  
G2=1000*(10^3);
G3=2000*(10^3);
G4=1000*(10^3);
G5=2500*(10^3);
G6=2000*(10^3);
G7=1500*(10^3);
G8=1000*(10^3);

TEG=(T1*G1)+(T2*G2)+(T3*G3)+(G4*T4)+(T5*G5)+(G6*T6)+(G7*T7)+(T8*G8);//Total Energy Generated
PUF=TED*100/(TEG); //Plant Use Factor

printf('a) The Reserve Capacity is a 1000kW Unit and Load Factor is %g percent\n',LF)
printf('b) The Plant Capacity Factor is %g percent\n',PCF)
printf('c) The Plant Use Factor is %g percent\n',PUF)
