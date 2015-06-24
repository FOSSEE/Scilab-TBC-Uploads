clc;
//Example 5.2
//Page no 161



//solution

Q=54;

disp("The bandwidth at the low frequency end ");

B=(540/Q);

disp('kHz',B,"B = ")

disp("The bandwidth at the high frequency end  ");

B1=(1600*(10^3)/Q);

disp('Hz',round(B1),"B = ")
