R18=12.7;                            //Assigning values to the parameters
R50=14.3;
t1=18;
t2=50;
alpha0=(R50-R18)/(t2*R18-t1*R50);
alpha18=alpha0/(1+t1*alpha0);
R0=R18/(1+t1*alpha0);               // Calculating resistance at 0 deg C
disp(alpha0,"Temperature coefficient at 0 deg C");
disp(alpha18,"temperature coefficient at 18 deg C");
disp(R0,"Resistance at 0 deg C");