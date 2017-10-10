// Example 32_11
clc;funcprot(0);
//Given data
T=[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24];// Time in hours
Rl=[80 80 80 80 80  100 120 120 120 120 40 40 40 40 40 40 40 140 160 160 160 160 80 80];// Residential load in kW
Sll=[60 60 60 60 60 60 0 0 0 0 0 0 0 0 0 0 0 0 60 60 60 60 60 60];// Street lighting load in kW
Il=[400 400 400 400 400 300 200 200 1000 1000 1000 1000 400 1000 1000 1000 1000 400 200 400 400 400 400 400];// Industrial load in kW
Tl=[540 540 540 540 540 460 320 320 1120 1120 1040 1040 440 1040 1040 1040 1040 540 320 620 620 620 540 540];// Total load in kW

// Calculation
T_p=[0 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 11 11 12 12 13 13 14 14 15 15 16 16 17 17 18 18 19 19 20 20 21 21 22 22 23 23 24];// Time in hours for load curve
Rl_p=[80 80 80 80 80 80 80 80 80 80 100 100 120 120 120 120 120 120 120 120 40 40 40 40 40 40 40 40 40 40 40 40 40 40 140 140 160 160 160 160 160 160 160 160 80 80 80 80];// Residential load in kW for load curve
Sll_p=[60 60 60 60 60 60 60 60 60 60 60 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 60 60 60 60 60 60 60 60 60 60 60 60];// Street lighting load in kW for load curve
Il_p=[400 400 400 400 400 400 400 400 400 400 300 300 200 200 200 200 1000 1000 1000 1000 1000 1000 1000 1000 400 400 1000 1000 1000 1000 1000 1000 1000 1000 400 400 200 200 400 400 400 400 400 400 400 400 400 400];// Industrial load in kW for load curve
Tl_p=[540 540 540 540 540 540 540 540 540 540 460 460 320 320 320 320 1120 1120 1120 1120 1040 1040 1040 1040 440 440 1040 1040 1040 1040 1040 1040 1040 1040 540 540 320 320 620 620 620 620 620 620 540 540 540 540];// Total load in kW for load curve
xlabel('TIME IN HOURS');
ylabel('LOAD IN kW');
title('Fig.Prob.32.11.Load curve');
plot(T_p',Rl_p','r',T_p',Sll_p','b-.',T_p',Il_p','g',T_p',Tl_p');
legend(['COMMERCIAL LOAD','STREET LIGHTING LOAD','INDUSTRIAL LOAD','TOTAL CURVE LOAD']);
E_1=(Rl(1)*5)+(Rl(6)*1)+(Rl(7)*4)+(Rl(11)*7)+(Rl(18)*1)+(Rl(19)*4)+(Rl(23)*2);// Total energy consumed by the residential load in kW-hrs
L_a1=E_1/24;// Average load of residential consumers in kW
ML_1=Rl(19);// Maximum load in kW
F_l1=L_a1/ML_1;// Load factor 
E_2=(Sll(1)*12);// Total energy consumed by the Street lighting load in kW-hrs
ML_2=Sll(1);// Maximum load in kW
F_l2=(E_2/24)*(1/ML_2);//Load factor 
E_3=(Il(1)*5)+(Il(6)*1)+(Il(7)*2)+(Il(9)*4)+(Il(13)*1)+(Il(14)*4)+(Il(18)*1)+(Il(19)*1)+(Il(20)*5);// Total energy consumed by the Industrial load in kW-hrs
ML_3=Il(9);// Maximum load in kW
F_l3=(E_3/24)*(1/ML_3);//Load factor
ML_s=Tl(11);// Simultaneous maximum demand in kW
ML_si=ML_1+ML_2+ML_3;// Sum of individual maximum load in kW
F_d=ML_si/ML_s;// Diversity factor
F_l=(E_1+E_2+E_3)/(ML_s*24);// Load factor of the system
printf('\n(a)Load factor of Residential load=%0.3f \n   Load factor of street lighting load=%0.1f \n   Load factor of industrial load load=%0.2f \n(b)Diversity factor of the system=%0.3f \n(c)Load factor of the system=%0.3f',F_l1,F_l2,F_l3,F_d,F_l);
// The answer vary due to round off error

