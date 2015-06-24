clear;
clc;

//page no. 88

w = 600;// pounds
l1 = 12;//inches
l2 = 8;//inches
Q = w/(62.4);
V_12 = Q/(0.25*%pi*(l1/12)^2);
V_8 = Q/(0.25*%pi*(l2/12)^2);
printf('Q = %.2f cfs',Q);
printf('\n V_12 = %.2f fps\n V_8 = %.2f fps',V_12,V_8);
