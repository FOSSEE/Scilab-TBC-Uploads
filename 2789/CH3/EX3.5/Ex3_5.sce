clear;
clc;

//page no.89

l = 12;// inches
W = 6;// pounds
w = 0.0624// lb/cuft
l1 = 8;// inches
rho = 0.050;// lb/cuft
Q_12 = W/w ;
Q_8 = W/rho ;
V_12 = Q_12/(0.25*%pi*(l/12)^2);
V_8 = Q_8/(0.25*%pi*(l1/12)^2);
printf('Q_12 = %.1f cfs, Q_8 = %d cfs',Q_12,Q_8);
printf('\n V_12 = %.1f fps, V_8 = %d fps',V_12,V_8);

//there is a minute error in the answer given in textbook
