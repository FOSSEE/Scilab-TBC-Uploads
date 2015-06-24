
//To Determine the Demand and Supply Parameters for 15 bulbs
//Page 73
clc;
clear;
W=60; //Wattage of the bulb
N=15; //No. of bulbs
CL=W*N; //Connected Load;
Wih=2*(10^3); //Wattage of immersion heater
Wh=2*(10^3); //Wattage of heater

//Usage of Bulbs at different time periods
N1=5;
N2=10;
N3=6

//Time periods for bulbs
T1=2; //6pm - 8pm
T2=2; //8pm - 10pm
T3=2; //10pm - 12pm
//Time Periods for heaters
T4=4; //1pm - 5pm
T5=3; //8pm - 11pm

//CASE 1
MD1=W*N2; //Maximum Demand
DF=MD1*100/CL; //Demand Factor
EC1=(N1*W*T1)+(N2*W*T2)+(N3*W*T3); //Energy Consumed
DLF1=EC1*100/(24*MD1); //Daily Load Factor

//CASE 2
MD2=(W*N2)+Wh; //From 8pm - 10pm
EC2=(T4*Wih)+(T5*Wh)+EC1; //Energy Consumed
DLF2=EC2*100/(24*MD2); //Daily Load Factor

printf('i)a) Connected Load is %g W\nb) The Maximum Demand is %g W\nc) The Demand Factor is %g percent\nd) The Daily Load Factor is %g percent\n',CL,MD1,DF,DLF1)
printf('ii) The Improved Daily Load Factor is %g percent\n',DLF2)
