//Calculations on spray penetration
clc,clear
//Given:
s1=20 //Distance of penetration in cm
t1=16 //Penetration time in millisec
P_i1=140 //Injection pressure in bar
s2=s1 //Same distance of penetration in cm
P_i2=220 //Injection pressure in bar
P_c=15 //Combustion chamber pressure in bar
//Solution:
deltaP1=P_i1-P_c //Pressure difference for 140 bar injection pressure
deltaP2=P_i2-P_c //Pressure difference for 220 bar injection pressure
t2=t1*(s2/s1)*sqrt(deltaP1/deltaP2) //Penetration time for 220 bar injection pressure in millisec
//Results:
printf("\n Penetration time for 220 bar injection pressure, t2 = %.1f milli-seconds\n\n",t2)
//Answer in the book is wrong
