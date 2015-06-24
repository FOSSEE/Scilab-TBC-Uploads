clc;
//page 675
//problem 13.8

//With single parity bit added, the code size = 4. An error evades parity check if any 2 or all symbols ofthe code arrives are erroneous.
//Probability of any symbol from n are erroneous = nCm*(p^m)*(1-p)^(n-m)

//Thus, the probability of error undetected, P_undeterr = (4C2*(p^2)*(1-p)^2)+4C4*(p^4) = 6*(p^2)*(1-p)^2)+(p^4)

//Probability of error in detection(P_undeterr1) for p = 0.1
p = 0.1
P_undeterr1 = 6*(p^2)*((1-p)^2)+(p^4)

disp('Probability of error in detection for p = 0.1 is '+string(P_undeterr1))

//Probability of error in detection(P_undeterr2) for p = 0.01
p = 0.01
P_undeterr2 = 6*(p^2)*((1-p)^2)+(p^4)

disp('Probability of error in detection for p = 0.01 is '+string(P_undeterr2))
