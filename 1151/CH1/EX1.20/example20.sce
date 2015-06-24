printf(" given \n N1=300\n N2=50 \n w1=3 rad/sec\n Torque for wheel 1=10Nm \n displacement for wheel 1=3 radian(clockwise)\n angular accerleration of wheel 1 is 4 rad/sec^2 ")
printf("find a) r1:r2 and r1:r3\n b)w3,w4 \n c)torque for wheel 2,wheel 3 \n displacement for wheel 2,3and 4\n e) angular displacement of wheel3 ")
n1=300;
n2=50;
n3=150;
n4=30;
r=n1/n2;
r1=n1/n3;
disp(r,"r1:r2=");
disp(r1,"r1:r3=")
w1=15;
w3=r1*w1; w4=n1*w1/n2;
disp(w3,"w3=")
disp(w4,"w4=")
t1=10;
t2=t1/r;
t3=t1/r1;
disp(t2,"torque for wheel 2 (in Nm) is")
disp(t3,"torque for wheel  3(in Nm) is")
disp(d2,"displacement for wheel 2 (in radian) is")

d1=3;
d2=r*d1;
d3=d2*n2/n3;
d4=d3*n3/n1;
disp(d3,"displacement for wheel 3 (in radian) is")
disp(d4,"displacement for wheel 4 (in radian) is")
a=r1*4;
disp(a,"angular displacement for wheel 3(in rad/sec^2) is")
