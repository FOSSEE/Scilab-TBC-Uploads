clc;
//page 105
//problem 2.10

//We know that, Probabilty of error(P_error) for the signal correpted by Gaussian channel variance sigma^2 where signal having voltage levels as 0&V is (1/2)*erfc(V/(2*sqrt(2)*sigma))

//P_error for V = 4 & sigma^2 =2
V = 4
sigma = sqrt(2)
P_error = (1/2)*erfc(V/(2*sqrt(2)*sigma))

disp('Probabilty of error for V = 4 & sigma^2 =2 is '+string(P_error))

//P_error for V = 2 & sigma^2 =2
V = 2
sigma = sqrt(2)
P_error = (1/2)*erfc(V/(2*sqrt(2)*sigma))

disp('Probabilty of error for V = 2 & sigma^2 =2 is '+string(P_error))

//P_error for V = 4 & sigma^2 =4
V = 4
sigma = sqrt(4)
P_error = (1/2)*erfc(V/(2*sqrt(2)*sigma))

disp('Probabilty of error for V = 4 & sigma^2 =4 is '+string(P_error))

//P_error for V = 8 & sigma^2 =2
V = 8
sigma = sqrt(2)
P_error = (1/2)*erfc(V/(2*sqrt(2)*sigma))

disp('Probabilty of error for V = 8 & sigma^2 =2 is '+string(P_error))
