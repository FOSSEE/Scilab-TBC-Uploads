clc;
a=0.909;
b=0.091;
nR=1+0.5;
nP=1;
H0=-282990;
R=8.3145;
T0=298;

U0=H0-(nP-nR)*R*T0;

UR0=-7844;
UR1=9487;
UP0=-6716;
UP2=(a*281751)-(UR0-UR1)+UP0

UP2_=(a*138720)+(b*74391)+(1.709*73555);

disp("which compares with the actual,hence actual temperature of the products is slightly greater than 3200",UP2_,"and UP2 at T=3200",UP2,"actual UP2 is")
