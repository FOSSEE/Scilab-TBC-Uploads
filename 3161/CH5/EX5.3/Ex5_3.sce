clc;
//page 259
//problem 5.3

//Given width of each pulse W = 150 us
W = 150 * 10^-6

//One cycle is a period,T = 1ms
T = 1000 * 10^-6

//There are 5 messages multiplexed each utilizeallocated time pulse width = s(T_5) = T/5
T_5 = T/5

//Gaurd time(GT_5) = allocated time-pulse width = T_5-W
GT_5 = T_5-W

disp('Gaurd time where 5 messages multiplexed is '+string(GT_5)+' seconds')

//Here there are 10 messages multiplexed each utilizeallocated time pulse width = s(T_10) = T/10
T_10 = T/10

//Gaurd time(GT_10) = allocated time-pulse width = T_10-norrow pulses width = T_10 -50* 10^-6
GT_10 = T_10 - 50 * 10^-6

disp('Gaurd time where 10 messages multiplexed is '+string(GT_10)+' seconds')
