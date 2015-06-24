clear ;
clc;
// Example 3.16
printf('Example 3.16\n\n');
printf('Page No. 79\n\n');

// given
tb = [36*10^3 72*10^3 144*10^3 216*10^3]; //operating time in s
U = [971 863 727 636];// Mean overall heat transfer rate in W/m^2-K
A = 50;// area in m^2
dT = 25;// temperature difference in degree celcius
ts = 54*10^3;// Time in sec (h converted to sec)
//As Q = U*A*dT
for i = [1:1:4]
    Q(i) = (U(i)*A*dT)/10^6;
    Q_a(i) = ((tb(i)*Q(i)*10^6)/(tb(i) + ts))/10^6;
    printf('the average heat transfer rate is %.3f *10^6 W \n',Q_a(i))
end

//Refer figure 3.9
printf('\n')
Q_max = 0.67*10^6;// Maximum value of Q in W
T_opt = 33;// Time in h
printf('The maximum value of Q obtained is %3.2e W \n',Q_max)
printf('The most econnomic opertaing time for the heat exchanger to run  is %.0f h ',T_opt)

