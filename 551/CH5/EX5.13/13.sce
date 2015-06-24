clc
T1=298; //K
T2=273; //K
Q1=24; //kJ/s
T3=653; //K
COP=T1/(T1-T2);
disp("(i) determine COP and work input required")

disp("Coefficient of performance = ")
disp(COP)

COP_ref=T2/(T1-T2);
W=Q1/COP_ref;
disp("Work input required = ")
disp(W)
disp("kW")


disp("(ii)Determine overall COP of the system ")
Q4=T1*W/(T3-T1);
Q3=Q4+W;
Q2=Q1+W;
COP=Q1/Q3;
disp("COP=")
disp(COP)

COP_overall=(Q2+Q4)/Q3;
disp("Overall COP=")
disp(COP_overall)