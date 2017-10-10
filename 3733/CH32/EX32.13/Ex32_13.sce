// Example 32_13
clc;funcprot(0);
//Given data
L_i=1500;// Installed load in MW
L=[50 0 1200 1000 500];// kW
T=[0 5 8 12 16 24];// hrs
Tp_1=40;// kW
Tp_2=1.5;// kWh
MD=1200;// Maximum load in kW

//Calculation
L_p=[0 50 50 0 0 1200 1200 1000 1000 500 500 2000];//Load in MW
T_p=[0 0 5 5 8 8 12 12 16 16 24 24];// Time in hours
L_I=[L_i L_i L_i L_i L_i L_i L_i L_i L_i L_i L_i L_i];// Installed load in MW for plot
plot(T_p',L_p','b',T_p',L_I','r');
a=gca();
a.x_ticks.labels=["","","5am","","8 am","","12noon","","4pm","","8 pm","","12pm"];
a.x_ticks.locations=[0;2;5;6;8;10;12;14;16;18;20;22;24];
xlabel('Time in hours');
ylabel('Load in kW');
xtitle('Fig.Prob.32.13');
legend('Load curve','Installed load');
E=(L(1)*(T(2)-T(1)))+(L(3)*(T(4)-T(3)))+(L(4)*(T(5)-T(4)))+(L(5)*(T(6)-T(5)));
F_l=(E/(MD*24));// Load factor
Fa=L_i*Tp_1;// Fixed amount in rupees
C=(E)*30*Tp_2;// Cost of energy consumed 
Mb=Fa+C;// Monthly bill in rupees
printf('\nLoad factor=%0.3f \nMonthly bill=Rs.%0.0f',F_l,Mb);
// The answer provided in the textbook is wrong
