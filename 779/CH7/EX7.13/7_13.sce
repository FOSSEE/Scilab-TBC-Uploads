A = 5*7;
k = 0.71;
L = 0.32;
Ti = 21+273;
To = 6+273;
Q = k*A*(Ti-To)/L ;
disp("W",Q,"The rate of heat transfer through the wall is")
Sgen_wall = Q/To - Q/Ti;
disp("W/K",Sgen_wall,"The rate of entropy through the wall is")
Tr = 27+273;
Ts = 2+273;
Sgen_total = Q/Ts-Q/Tr;
disp("W/K",Sgen_total,"The rate of total entropy generation with this heat transfer process is")
