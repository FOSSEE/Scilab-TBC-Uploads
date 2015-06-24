//Example 11.3.1 // percentage of the reading and percentage of full scale
clc;
clear;
close;
//given data :
a=10;//scale reading
b=70;// full scale
error1=-(0.5/10)*100;
disp("step 1")
disp(error1,"error of reading in %")
error2=-(0.5/100)*100;
disp(error2,"error of full scale in %")
disp("step 2")
error3=(2.5/70)*100;
disp(error3,"error of reading in %")
error4=(2.5/100)*100;
disp(error4,"error of full scale in %")
