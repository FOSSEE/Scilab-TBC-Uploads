t1=20;                                //Assigning values to the parameters
R1=18;
t2=50;
R2=20;
R3=21;
ts=15;
alpha0=(R2-R1)/(t2*R1-t1*R2);
t=((R3*(1+alpha0*20))-R1)/(alpha0*R1);
disp(alpha0," Temperature Coefficient at 0 deg C");
trise=t-ts;
disp(trise,"mean temperature rise");