//Eg-6.10
//pg-297           

clear
clc

data=[600;420;360;510;600;325;220;299;180;600];
m=mean(data);
s=variance(data);
sd=st_deviation(data);

disp("mean variance and standard deviation are respectively")
disp(m)
disp(s)
disp(sd)