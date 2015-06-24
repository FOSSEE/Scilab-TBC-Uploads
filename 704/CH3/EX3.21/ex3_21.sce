//Caption:Determine Primary resistance referred to secondary and secondary resistance referred to primary and total resistance of transformer referred to primary.
//Exam:3.21
clc;
clear;
close;
V_1=2000;//Primary voltage at no load or full load(in Volts)
V_2=220;//Secondary voltage at no load (in Volts)
R_1=1.06;//Primary resistance(in Ohm)
R_2=0.013;//Secondary resistance(in Ohm)
K=V_2/V_1;//Ratio of transformation
R_eq1=(K^2)*R_1;//Primary resistance referred to secondary(in Ohm)
disp(R_eq1,'Primary resistance referred to secondary(in Ohm)=');
R_eq2=R_2/(K^2);//secondary resistance referred to primary(in Ohm)
disp(R_eq2,'secondary resistance referred to primary(in Ohm)=');
R_e1=R_1 + R_eq2;//total resistance of transformer referred to primary(in Ohm)
disp(R_e1,'total resistance of transformer referred to primary(in Ohm)=');