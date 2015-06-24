clc;
//page 558
//problem 11.3

//Prior probability of s1 P_s1 = 0.4
P_s1 = 0.4;

//Prior probability of s2 P_s2 = 1 - P_s1
P_s2 = 1 - P_s1;

//Voltage level V1 = 1
V1 = 1;

//Voltage level V2 = -1
V2 = -1;

//Part a

//Noise Variance sigma1 = 10^-3
sigma1 = 10^-3;

//Descision Threshold lambda1 
lambda1 = (V1+V2)/2 + (sigma1)*log(P_s2/P_s1)/(V1-V2);

//Probability of error Pe
Pe = 0.5*(2*P_s1 - P_s1*erfc(((V2-V1)/(2*sigma1*2^0.5)) + (sigma1)*log(P_s2/P_s1)/((V1-V2)*2^0.5)));

disp('The decision threshold is '+string(lambda1)+' V');
disp('The probability of error is approximately '+string(Pe));

//Part b

//Noise Variance sigma2 = 10^-1
sigma2 = 10^-1;

//Descision Threshold lambda2
lambda2 = (V1+V2)/2 + (sigma2)*log(P_s2/P_s1)/(V1-V2);

//Probability of error Pe
Pe1 = 0.5*(2*P_s1 - P_s1*erfc(((V2-V1)/(2*sigma2*2^0.5)) + (sigma2)*log(P_s2/P_s1)/((V1-V2)*2^0.5)));

//In the textbook Pe has been calulated to be 0.0021 because of the use of a very high precision calculator, unfortunately in scilab the function erfc approximates the output value to a larger extent due to which an exact value cannot be obtained.

disp('The decision threshold is '+string(lambda2)+' V');
disp('The probability of error is approximately '+string(Pe1));


