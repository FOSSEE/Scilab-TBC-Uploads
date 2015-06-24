//Chapter 7
//Example 7.7
//page 281
//To find the optimal generation schedule for a typical day of the fundamental hydrothermal system
clear;clc;

h_b=20;//basic head of the water
e=0.005; //head correction factor
r=2; //non-effective water discharge
Pd_1=7; Pd_2=10; Pd_3=5; //load at three intervals of time during a day
alpha=0.5;//positive scalar
X_0=100; //initial water storage in the reservoir
X_3=60; //final water storage in the reservoir
//let us assume the initial values of the control variables
q_2=15;
q_3=15;
i=0; //iteration count
grad_2=1;grad_3=1; //inital value for iterations

while ((grad_2>0.1)|(grad_3>0.1))

//water discharge in the first interval
q_1=X_0-X_3-(q_2+q_3);

//water level after the first intervals are
X_1=X_0-q_1;
X_2=X_1-q_2;

//hydro generations in the subintervals 
Pgh_1=9.81*(10^-3)*20*(1+0.5*e*(X_1+X_0))*(q_1-r);
Pgh_2=9.81*(10^-3)*20*(1+0.5*e*(X_2+X_1))*(q_2-r);
Pgh_3=9.81*(10^-3)*20*(1+0.5*e*(X_3+X_2))*(q_3-r);

//thermal generation in the three intervals
Pgt_1=Pd_1-Pgh_1;
Pgt_2=Pd_2-Pgh_2;
Pgt_3=Pd_3-Pgh_3;

//calculating lamda_1 for three subintervals
lamda_1_1=Pgt_1+25;
lamda_1_2=Pgt_2+25;
lamda_1_3=Pgt_3+25;

//since we are considering lossless case
lamda_3_1=lamda_1_1;
lamda_3_2=lamda_1_2;
lamda_3_3=lamda_1_3;

//for calculating lamda_2 for three intervals
lamda_2_1=lamda_3_1*9.81*(10^-3)*20*(1+0.5*e*(2*X_0-2*q_1+r));
lamda_2_2=lamda_2_1-lamda_3_1*(0.5*9.81*(10^-3)*20*e*(q_1-r))-lamda_3_2*(0.5*9.81*(10^-3)*20*e*(q_2-r));
lamda_2_3=lamda_2_2-lamda_3_2*(0.5*9.81*(10^-3)*20*e*(q_2-r))-lamda_3_3*(0.5*9.81*(10^-3)*20*e*(q_3-r));

//calculation of gradient vector
grad_2=lamda_2_2-lamda_3_2*9.81*(10^-3)*20*(1+0.5*e*(2*X_1-2*q_2+r));
grad_3=lamda_2_3-lamda_3_3*9.81*(10^-3)*20*(1+0.5*e*(2*X_2-2*q_3+r));

q_2=q_2-alpha*grad_2; //updating value of q and reiterating
q_3=q_3-alpha*grad_3;
i=i+1;
end

//Hydel and thermal generation for the three sub interavals are given in tabular format
printf('\nResults for Optimal Loading of Hydrothermal stations at the end of %d iterations',i);
printf('\n---------------------------------------------------------------------------------------\n');
printf('Interval\t\tLoad\t\tHydro\t\tThermal\t\tWater discharge\n');
printf('        \t\tMW\t\tMW\t\tMW\t\tm^3/s\n');
printf('---------------------------------------------------------------------------------------\n');
printf('   1    \t\t%d\t\t%0.4f\t\t%0.4f\t\t%0.2f\n',Pd_1,Pgh_1,Pgt_1,q_1);
printf('   2    \t\t%d\t\t%0.4f\t\t%0.4f\t\t%0.2f\n',Pd_2,Pgh_2,Pgt_2,q_2);
printf('   3    \t\t%d\t\t%0.4f\t\t%0.4f\t\t%0.2f\n',Pd_3,Pgh_3,Pgt_3,q_3);
printf('---------------------------------------------------------------------------------------\n');
