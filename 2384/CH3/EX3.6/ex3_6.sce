// Exa 3.6
clc;
clear;
close;
format('v',7)
// Givven data
V1= 60*expm(%i*0*%pi/180);// in V
V2= 40*expm(%i*-%pi/3);// in V
add_V= V1+V2;// in V
diff_V= V1-V2;// in V
disp("The sum of V1 and V2 is : ")
disp(string(abs(add_V))+" sin (theta"+string(atand(imag(add_V),real(add_V)))+"°) V")
disp("The difference of V1 and V2 is : ")
disp(string(abs(diff_V))+" sin (theta+"+string(atand(imag(diff_V),real(diff_V)))+"°) V")

