//Network Theorem 1
//page no-2.23
//example2.15
disp("from the fig,");
disp("IA=I1");....//equation 1
disp("IB=I2");....//equation 2
disp("Applying Kvl to mesh 1:");
disp("5-5*I1-10*IB-10*(I1-I2)-5*IA=0");
disp("5-5*I1-10*I2-10*I1+10*I2-5*I1=0");
disp("-20*I1=-5");
I1=5/20;
printf("I1= %.2f A", I1);....//equation 3
disp("Applying Kvl to mesh 2:");
disp("15*I1-15*I2=10");....//equation 4
disp("Put I1=0.25 A in equation 4");
disp("-6.25=15*I2");
I2=-6.25/15;
printf("I2= %.2f A", I2);