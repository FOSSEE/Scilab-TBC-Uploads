//Eg-6.11
//pg-299           

clear
clc


data=[144.4;152.8;171.9;183;166.5;180.1;156.4;177.4;170.8;169.5;178.6;161.2;182.6;157;166.4;174.8;174.7;163.7;155.1;169.6];
m=mean(data);
s=variance(data);
sd=st_deviation(data);

disp("mean variance and standard deviation are respectively")
disp(m)
disp(s)
disp(sd)