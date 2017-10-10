// Example 2_4
clc;funcprot(0);
//Given data
m_1=20;// The steam discharge during the monsoon season of four months in m^3/sec
m_2=2.5;// The steam discharge during the remaining year in m^3/sec
h_l=3;//The head loss in the pipe in %
n_o=90;//Over all efficiency of the generation in %
Tn=365;// Total number of days in a year
H=80;// metres
g=9.81;// m/s^2
//Calculation
N_m=30+31+31+30;//The number of days during which the discharge of 20 m^3/sec is available
N_r=Tn-N_m;//The number of days during which the discharge of 2.5 m^3/sec is available
Tf=(m_1*3600*24*N_m)+(m_2*3600*24*N_r);// Total flow during the year in m^3
m_avg=(Tf)/(3600*24*Tn);//Average discharge in m^3/sec
gradm=m_1-m_avg;// The difference between the maximum and average discharge in  m^3/sec
Rc=(gradm*3600*24*N_m)/86400;// Reservoir capacity to store the excess water in day -sec-metre
H_net=H*(1-(h_l/100));// metres
P_avg=(m_avg*1000*g*H_net*(n_o/100))/(1000);//Average kW generated in kW
P_avg=P_avg/1000;// MW
printf('\nReservoir capacity to store the excess water=%0.0f day-sec-metre \nAverage kW generated=%0.2f MW',Rc,P_avg);
// The answer provided in the textbook is wrong
