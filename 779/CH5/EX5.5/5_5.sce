t1 = 15; t2 = 800; t3 = 650; t4 = 500;
v1 = 30; v2 = 30 ; v3 = 60; 
w = 2;
cp = 1005;
Q1_2 = w*cp*(t2-t1);
disp("KJ/s",Q1_2/1000,"The rate of heat transfer to the air in the heat exchanger is")
W_T = w*( ((v2^2-v3^2)/2) + cp*(t2-t3));
disp("KW",W_T/1000,"The power output from the turbine assuming no heat loss")
v4 = sqrt( (v3^2) + (2*cp*(t3-t4)) );
disp("m/s",v4,"The velocity at the exit of the nozzle is")