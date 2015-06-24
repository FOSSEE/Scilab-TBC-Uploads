//Example6.17  // determine the closed loop gain
clc;
clear;
close;

// the output of the voltage follower is given as
//Vo = Aop(V1-Vo);

// the closed loop gain of the voltage follower 
//A = 1/(1+(1/Aop));
 
// for Aop = 10^4 closed loop gain
Aop = 10^4 ;
A = 1/(1+(1/Aop));
disp('for Aop = 10^4 closed loop gain is = '+string(A)+ ' ');

// for Aop = 10^3 closed loop gain
Aop = 10^3 ;
A = 1/(1+(1/Aop));
disp('for Aop = 10^3 closed loop gain is = '+string(A)+ ' ');

// for Aop = 10^2 closed loop gain
Aop = 10^2 ;
A = 1/(1+(1/Aop));
disp('for Aop = 10^2 closed loop gain is = '+string(A)+ ' ');

// for Aop = 10^1 closed loop gain
Aop = 10^1 ;
A = 1/(1+(1/Aop));
disp('for Aop = 10^1 closed loop gain is = '+string(A)+ ' ');
