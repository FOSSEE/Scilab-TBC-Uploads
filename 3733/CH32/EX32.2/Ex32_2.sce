// Example 32_2
clc;funcprot(0);
//Given data
T_1=[0,6];// Time in hours
T_2=[6,10];// Time in hours
T_3=[10,12];// Time in hours
T_4=[12,16];// Time in hours
T_5=[16,20];// Time in hours
T_6=[20,22];// Time in hours
T_7=[22,24];// Time in hours
L=[20,50,60,40,80,70,40];//load in kW

//Calculation
//(a)
L_p=80;// Peak load in kW
E_g=(L(1)*(T_1(2)-T_1(1)))+(L(2)*(T_2(2)-T_2(1)))+(L(3)*(T_3(2)-T_3(1)))+(L(4)*(T_4(2)-T_4(1)))+(L(5)*(T_5(2)-T_5(1)))+(L(6)*(T_6(2)-T_6(1)))+(L(7)*(T_7(2)-T_7(1)));//Energy generated in MW-hrs
L_a=E_g/24;// Average load in kW
F_l=L_a/L_p;// Load factor 
T=[0 0 6 6 10 10 12 12 16 16 20 20 22 22 24 24];//Time in hours for load curve
L=[0 20 20 50 50 60 60 40 40 80 80 70 70 40 40 100];// Load in kW for load curve
xlabel('TIME IN HOURS');
ylabel('LOAD IN kW');
title('Fig.32.2 Load curve');
plot(T,L,'b');
printf('\n(a)Load factor=%0.3f',F_l);
//(b)
L_p=20;// Peak load in kW
E_g=(20*4)+(10*2);//MW-hrs
T_s=6;//Time during which stand by unit remains in operation hours (from the load curve)
L_a=E_g/T_s;
F_l=L_a/L_p;// Load factor
printf('\n(b)Load factor=%0.3f',F_l);
x=[16 22];// Time n hours
L=[60 60];// Load in MW
plot(x,L,'r-.');
legend('LOAD CURVE');
// The answer vary due to round off error
