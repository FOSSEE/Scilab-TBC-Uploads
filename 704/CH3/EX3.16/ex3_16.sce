//Caption:In a single phase transformer Calculate Equivalent resistance as referred to primary and Equivalent resistance as referred to secondary and Equivalent reactance as referred to both primary and secondary also find Equivalent impedence as referred to both primary and secondary.
//Exam:3.16
clc;
clear;
close;
V_1=4400;//Primary voltage (in Volts)
V_2=220;//Secondary voltage (in Volts)
R_1=3.45;//Primary resistance (in Ohm)
X_1=5.2;//Primary reactances (in Ohm)
R_2=0.009;//secondary resistance (in Ohm)
X_2=0.015;//secondary reactance (in Ohm)
K=V_2/V_1;//voltage ratio
R_o1=R_1+(R_2/K^2);//Equivalent resistance as referred to primary(in Ohm)
disp(R_o1,'Equivalent resistance as referred to primary(in Ohm)=');
R_o2=R_2+(R_1*K^2);//Equivalent resistance as referred to secondary(in Ohm)
disp(R_o2,'Equivalent resistance as referred to secondary(in Ohm)=');
X_o1=X_1+(X_2/K^2);//Equivalent reactance as referred to primary(in Ohm)
disp(X_o1,'Equivalent reactance as referred to primary(in Ohm)=');
X_o2=X_2+X_1*(K^2);//Equivalent reactance as referred to secondary(in Ohm)
disp(X_o2,'Equivalent reactance as referred to secondary(in Ohm)=');
Z_o1=((R_o1)^2 + (X_o1)^2)^(1/2);//Equivalent impedence as referred to primary(in Ohm)
disp(Z_o1,'Equivalent impedence as referred to primary(in Ohm)=');
Z_o2=((R_o2)^2 + (X_o2)^2)^(1/2);//Equivalent impedence as referred to secondary(in Ohm)
disp(Z_o2,'Equivalent impedence as referred to secondary(in Ohm)=');