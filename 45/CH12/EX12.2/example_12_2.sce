//Example 12.2
clc;
clear;
LSB = 1/(2^5-1);  // calculating weights 
LSB2 = 2*1/(2^5-1);
LSB3 = 4*1/(2^5-1); 
change_LSB = 10 *LSB; 
change_LSB2 = 10 *LSB2;
change_LSB3 = 10*LSB3;
op_vol= (10*2^0 + 0*2^1 + 10*2^2 +0*2^3 +10*2^4)/(2^5-1); // calculating output voltage 
disp("(a) LSB =");
disp(LSB);
disp("(b)Second LSB =");
disp(LSB2) 
disp("  Third LSB3 =");
disp(LSB3) 
disp('(c) change in output voltage caused by ');
disp("change in LSB =");
disp(change_LSB);
disp("change in second LSB =");
disp(change_LSB2) 
disp("change in third LSB =");
disp(change_LSB3) 
disp("(d)output voltage for a digital input of 10101 =");
disp(op_vol) ;
