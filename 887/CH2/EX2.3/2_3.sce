//ex2.3
V_total=15;
R_1=1*10^3;
R_2=1*10^3;
R_3=2*10^3;
R_4=6*10^3;
//By voltage-division priciple
V_1=R_1*V_total/(R_1+R_2+R_3+R_4);      //voltage across R_1
V_4=R_4*V_total/(R_1+R_2+R_3+R_4);      //voltage across R_4
disp(V_1,'voltage across R_1')
disp(V_4,'voltage across R_4')
