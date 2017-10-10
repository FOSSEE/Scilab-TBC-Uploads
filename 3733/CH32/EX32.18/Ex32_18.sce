// Example 32_18
clc;funcprot(0);
//Given data
L_max=6000;// MW
L_min=2000;// MW
P_cap=7000;// MW

// Calculation
t=[0 1 2 3 4 5  6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24];// Time in hours
for(i=1:25)
    L(i)=(2000+(4000*sin((%pi*t(i))/24)));
end
t_1=[0 12 24 24];// Time in hours
L_cap=[7000 7000 7000 8000];// Plant capacity in MW
xlabel('t(time in hrs)');
ylabel('Load in kW');
xtitle('Fig.Prob.32.18');
plot(t,L,'g', t_1,L_cap,'b-.');
a=gca();
a.x_ticks.labels=["0","","","","","","12","","","","","","24"];
a.x_ticks.locations=[0;2;4;6;8;10;12;14;16;18;20;22;24];
legend('Load curve','L_cap')
t_1=0;
t_2=24;// Limits of integration
L_av=(1/24)*integrate('(2000+(4000*(sin((%pi*t)/(24)))))','t',t_1,t_2);// Average load on the plant in MW
PLF=(L_av/L_max);// Plant load factor
PCF=(L_av/P_cap);// Plant Capacity factor
printf('\nAverage load on the plant=%0.1f MW \nPlant load factor=%0.3f \nPlant Capacity factor=%0.2f',L_av,PLF,PCF);
