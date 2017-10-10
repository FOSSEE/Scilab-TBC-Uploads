// Example 3_3
clc;funcprot(0);
//Given data
L=[100 160 80 40 20];// Load in MW
T_1=[6,10];// Time in hours
T_2=[10,18];// Time in hours
T_3=[18,20];// Time in hours
T_4=[20,24];// Time in hours
T_5=[0,6];// Time in hours
n_th=[30 35 25 15 10]/100;// The thermal efficiencies of the plant
n_p=80;// The efficiency of the pump in %
n_t=90;// The efficiency of the turbine in %

// Calculation
//(a)
T_p=[0 0 4 4 12 12 14 14 18 18 24 24];// Time in hours for load curve
L_p=[0 100 100 160 160 80 80 40 40 20 20 100];// Load in MW for load curve
plot(T_p',L_p','b');
a=gca();
a.x_ticks.labels=["6 A.M","","","12 P.M","","","6 A.M","","","12 P.M","","","6 A.M"];
a.x_ticks.locations=[0;2;4;6;8;10;12;14;16;18;20;22;24];
O=(L(1)*(T_1(2)-T_1(1)))+(L(2)*(T_2(2)-T_2(1)))+(L(3)*(T_3(2)-T_3(1)))+(L(4)*(T_4(2)-T_4(1)))+(L(5)*(T_5(2)-T_5(1)));// Total output per day in MW-hrs
I_1= ((L(1)*(T_1(2)-T_1(1)))/(n_th(1)))+((L(2)*(T_2(2)-T_2(1)))/(n_th(2)))+((L(3)*(T_3(2)-T_3(1)))/(n_th(3)))+((L(4)*(T_4(2)-T_4(1)))/(n_th(4)))+((L(5)*(T_5(2)-T_5(1)))/(n_th(5)));// The input to the thermal plant in MW-hrs
n_o1=(O/I_1)*100;// Over all efficiency in %

//(b)
n_op=(n_p/100)*(n_t/100)*100;// The over all efficiency of the pump storage plant in %
// From the Fig.Prob.3.3
function[X]=baseload(y)
    X(1)=((((y(1)-L(3))*(T_3(2)-T_3(1)))+((y(1)-L(4))*(T_4(2)-T_4(1)))+((y(1)-L(5))*(T_5(2)-T_5(1))))*(n_op/100))-(((L(1)-y(1))*(T_1(2)-T_1(1)))+((L(2)-y(1))*(T_2(2)-T_2(1))));
endfunction
y=[10];
z=fsolve(y,baseload);
x=(z(1));// The capacity of the thermal plant in MW
X=[x x x x x x x x x x x x];//The capacity of the thermal plant in MW for plot
xlabel('Time in hrs');
ylabel('Load in MW');
plot(T_p',L_p','b',T_p',X','b-.');
legend('Load curve','Base load thermal plant');
I_2=(x*24)/(n_th(2));// The energy supplied in the second case in MW-hrs
n_o2=(O/I_2)*100;// The over all efficiency of the combined plant in %
PI=((I_1-I_2)/I_1)*100;// The percentage saving in input in %
printf('\n(a)The total input to the thermal plant=%0.0f MW-hrs \n(b)The percentage saving in input to the plant=%0.2f percentage \n(c)The over all efficiency of the thermal plant=%0.1f percentage \n   The over all efficiency of the combined plant=%0.0f percentage',I_1,PI,n_o1,n_o2);
// The answer vary due to round off error
