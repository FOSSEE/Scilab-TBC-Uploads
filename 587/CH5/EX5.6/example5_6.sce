clear;
clc;

//Example5.6[Solar Energy Storage in Trombe Walls]
//Given:-
hin=10;//[W/m^2]
A=3*75;//[m^2]
Tin=21;//[degree Celcius]
k=0.69;//[W/m.degree Celcius]
a=4.44*10^(-7);//diffusivity[m^2/s]
kappa=0.77;
delx=0.06;//The nodal spacing[m]
L=0.3;//Length of wall[m]
Tout=0.6,q_solar=360;//Ambient temperature in degree Celcius and Solar Radiation between 7am to 10 am
//Solution:-
M=(L/delx)+1;
disp(M,"No of nodes are")
//Stability Criterion
del_t=(delx^2)/(3.74*a);//[seconds]
disp("s",del_t,"The maximum allowable value of the time step is")
//Therefore any step less than del_t can be used to solve this problem,for convinience let's choose 
delt=900;//[seconds]
tao=a*delt/(delx^2);
disp(tao,"The mesh Fourier number is")
//Initially at 7am or t=0,the temperature of the wall is said to vary linearly between 21 degree Celcius at node 0 and -1 at node 5
//Temp between two neighbouring nodes is
temp=(21-(-1))/5;//[degree Celcius]
T0_0=Tin;
T1_0=T0_0-temp;
T2_0=T1_0-temp;
T3_0=T2_0-temp;
T4_0=T3_0-temp;
T5_0=T4_0-temp;
T0_1=((1-3.74*tao)*T0_0)+(tao*(2*T1_0+36.5));
T1_1=(tao*(T0_0+T2_0))+(T1_0*(1-(2*tao)));
T2_1=(tao*(T1_0+T3_0))+(T2_0*(1-(2*tao)));
T3_1=(tao*(T2_0+T4_0))+(T3_0*(1-(2*tao)));
T4_1=(tao*(T3_0+T5_0))+(T4_0*(1-(2*tao)));
T5_1=(T5_0*(1-(2.70*tao)))+(tao*((2*T4_0)+(0.70*Tout)+(0.134*q_solar)));
disp("Nodal temperatures at 7:15am are")
disp("degree Celcius",T0_1,"Node0:")
disp("degree Celcius",T1_1,"Node1:")
disp("degree Celcius",T2_1,"Node2:")
disp("degree Celcius",T3_1,"Node3:")
disp("degree Celcius",T4_1,"Node4:")
disp("degree Celcius",T5_1,"Node5:")
Q_wall=hin*A*delt*(((round(T0_1)+T0_0)/2)-Tin);//[J]
disp("J",Q_wall,"The amount of heat transfer during the first time step or during the first 15 min period is")
//Similarly using values from the table given we can find temperature at various nodes after required time interval
