clear ;
clc;
// Example 16.3
printf('Example 16.3\n\n');
//Page no. 494
// Solution

//Given
T1 = 110 ;// Temperature of chlorobenzene - [degree C] 
T1F = (9*T1)/(5) + 32 ;// Temperature of chlorobenzene - [degree F] 
P1 = 400 ;//Pressure of chlorobenzene - [mm of Hg]
P1_psia = P1*14.7/760 ;//Pressure of chlorobenzene - [psia]
T2 = 205 ;// Temperature of chlorobenzene - [degree C] 
T2F = (9*T2)/(5) + 32 ;// Temperature of chlorobenzene - [degree F] 
P2 = 5 ;//Pressure of chlorobenzene - [atm]
P2_psia = P2*14.7 ;//Pressure of chlorobenzene - [psia]

// Data from steam table
x1 = [.9487,3.72,11.525,29.8,67,247,680,1543,3094];
y1 = [100,150,200,250,300,400,500,600,700];

x2 = [P1_psia,P2_psia];
y2 = [T1F,T2F];

// Cox chart using given and steam table data
plot2d("ln",x1,y1,5);
//plot2d("ln",x1,y1)
xgrid(3);
//plot2d("ln",x2,y2)
plot2d("ln",x2,y2,2);
xgrid(3);
legend("Water","Chlorobenzene");
plot2d("ln",x1,y1,-9);
plot2d("ln",x2,y2,-9);
title('Figure E16.3 Cox chart for the problem');
xlabel('Vapour Pressure , psia (log(10) scale)');
ylabel('Temperature, degree F(special scale)');

// Estiimate vapour pressure of chlorobenzene from cox chart prepared, it is
vp1 = 150 ;// vapour pressure of chlorobenzene from cox chart prepared at 245 degree C
vp2 = 700 ;// vapour pressure of chlorobenzene from cox chart prepared at 359 degree C

printf('Temperature             Estimated vapour pressure of chlorobenzene from cox chart\n');
printf('\n 245 degree C            %i psia\n',vp1);
printf(' 359 degree C            %i psia',vp2);