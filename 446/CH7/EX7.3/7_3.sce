clear 
clc
disp('Exa-7.3');
//for l=0; 
// employing the formula for probability distribution similarly as done in Exa-7.2 
Pr1= integrate('(1/8)*((4*x^2)-(4*x^3)+(x^4))*%e^(-x)','x',0,1);           //x=r/ao; similrly limits between 0 and 1.
Pr2=integrate('(1/24)*(x^4)*(%e^-x)','x',0,1);                             //x=r/ao; similrly limits between 0 and 1.
printf('The probability for l=0 electron is %.3f and for l=1 electron is %.4f.',Pr1,Pr2);
