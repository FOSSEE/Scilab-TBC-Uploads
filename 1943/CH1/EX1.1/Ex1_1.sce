
clf()
clc
clear
//Input data
C=30//Capacity in MW
M=70//Loads are taken above 70 MW
t1=[0,6]//Time range in hours
t2=[6,10]//Time range in hours
t3=[10,12]//Time range in hours
t4=[12,16]//Time range in hours
t5=[16,20]//Time range in hours
t6=[20,22]//Time range in hours
t7=[22,24]//Time range in hours
L=[30,70,90,60,100,80,60]//Load in MW

//Calculations
E=((L(1)*(t1(2)-t1(1)))+(L(2)*(t2(2)-t2(1)))+(L(3)*(t3(2)-t3(1)))+(L(4)*(t4(2)-t4(1)))+(L(5)*(t5(2)-t5(1)))+(L(6)*(t6(2)-t6(1)))+(L(7)*(t7(2)-t7(1))))//Energy generated in MWh
AL=(E/24)//Average load in MW
PL=max(L(1),L(2),L(3),L(4),L(5),L(6),L(7))//Peak load in MW
LF=(AL/PL)//Load factor of the plant
E1=((L(3)-M)*(t3(2)-t3(1)))+((L(5)-M)*(t5(2)-t5(1)))+((L(6)-M)*(t6(2)-t6(1)))//Energy generated if the load above 70 MW is supplied by a standby unit of 30 MW capacity in MWh
T=(t3(2)-t3(1))+(t5(2)-t5(1))+(t6(2)-t6(1))//Time during which the standby unit remains in operation in h
AL1=(E1/T)//Average load in MW
LF1=(AL1/C)//Load factor 
U=(E1/(C*T))//Use factor

//Output
t=[0,0,6,6,10,10,12,12,16,16,20,20,22,22,24,24]//Time for plotting load curve in hours
l=[0,30,30,70,70,90,90,60,60,100,100,80,80,60,60,0]//Load for plotting load curve in MW
plot(t,l)//Load curve taking Time in hours on X-axis and Load in MW on Y- axis
xtitle('Load Curve','Time hours','Load MW');


printf('(a)Load factor of the plant is %3.2f\n(b)Load factor of a standby equipment of %3.0f capacity if it takes up all the loads above %3.0f MW is %3.2f\n(c)Use factor is %3.2f',LF,C,M,LF1,U)
