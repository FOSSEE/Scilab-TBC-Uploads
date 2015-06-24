//Caption:Determine equivalent resistance and reactance of primary referred to secondary and total resistance and reactance referred to secondary and equivalent resistance and reactance of secondary referred to primary and total resistance and reactance of secondary referred to primary.
//Exam:3.20
clc;
clear;
close;
V_1=2000;//Primary voltage at no load or full load(in Volts)
V_2=200;//Secondary voltage at no load (in Volts)
K=V_2/V_1;//Ratio of transformation
R_1=2;//Primary resistance(in Ohm)
R_2=0.025;//Secondary resistance(in Ohm)
X_1=4;//Primary reactance(in Ohm)
X_2=0.04;//Secondary reactance(in Ohm)
R_eq12=(K^2)*R_1;//equivalent resistance of primary referred to secondary(in Ohm)
disp(R_eq12,'equivalent resistance of primary referred to secondary(in Ohm)=');
X_eq12=(K^2)*X_1;//equivalent reactance of primary referred to secondary(in Ohm)
disp(X_eq12,'equivalent reactance of primary referred to secondary(in Ohm)=');
R_e2=(K^2)*R_1 + R_2;//total resistance of primary referred to secondary(in Ohm)
disp(R_e2,'total resistance of primary referred to secondary(in Ohm)=');
X_e2=(K^2)*X_1 + X_2;//total reactance of primary referred to secondary(in Ohm)
disp(X_e2,'total reactance of primary referred to secondary(in Ohm)=');
R_eq21=R_2/(K^2);//equivalent resistance of secondary referred to primar(in Ohm)
disp(R_eq21,'equivalent resistance of secondary referred to primar(in Ohm)=');
X_eq21=X_2/(K^2);//equivalent reactance of secondary referred to primar(in Ohm)
disp(X_eq21,'equivalent reactance of secondary referred to primar(in Ohm)=');
R_e1=R_1 + R_2/(K^2);//total resistance of secondary referred to primary(in Ohm)
disp(R_e1,'total resistance of secondary referred to primary(in Ohm)=');
X_e1=X_1 + X_2/(K^2);//total reactance of secondary referred to primary(in Ohm)
disp(X_e1,'total reactance of secondary referred to primary(in Ohm)=');