

//exapple 1.16 
clc; funcprot(0);
// Initialization of Variable
change=-11.82/60;//change in time in a day
time=-3-28.41/60;//greenwich time at july1 1951
c12=change/24*12//change of time in 12 hours
tch=time-c12;
disp(tch,"greenwich mean time error in 12th hour in (minutes):")
