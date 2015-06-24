clc
t1=20; //0C
C1=40; //m/s
t2=820; //0C
C2=40; //m/s
t3=620; //0C
C3=55; //m/s
t4=510; //0C
m=2.5; //kg/s
cp=1.005; //kJ/kg.0C


disp("(i) Heat exchanger")
Q_12=m*cp*(t2-t1);
disp("rate of heat transfer=")
disp(Q_12)
disp("kJ/s")


disp("(ii) Turbine")
W_23=m*[(cp*(t2-t3))+(C2^2-C3^2)/2/1000];
disp("Power output of turbine=")
disp(W_23)
disp("kW")


disp("(iii) Nozzle")
C4=sqrt(2*1000*(cp*(t3-t4)+C3^2/2/1000));
disp("Velocity at exit from the nozzle= ")
disp(C4)
disp("m/s")