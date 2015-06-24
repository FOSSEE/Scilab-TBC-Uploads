clc
//initialisation of variables
clear
d= 0.0764 //lbm/ft^3
u= 3.74*10^-7 //lbf sec/ft^2
D= 15 //in
g= 32.2 //ft/sec^2
p= 14.7 //lb/in^2
r1= [0.02 0.04 0.06 0.08 0.1 1.15]
r2= [0.0338 0.0267 0.0199 0.0159 0.0132 0.0100]
r3= [0.46 0.92 1.38 1.84 2.3 2.64]
r4= [2.97 2.35 1.75 1.4 1.16 0.88]
r5= [0.0206 0.0163 0.0121 0.0097 0.0081 0.0061]
//CALCULATIONS
re= (d/u)*(p*100*2*%pi/60)*(D/12)^2/g
//RESULTS
printf ('Reynolds Number = %.2e ',re) 
xtitle("","m lbm/sec", "dPs lbf/ft^2") 

disp(r1)
disp(r2)
disp(r3)
disp(r4)
disp(r5)
plot(r3,r5)
