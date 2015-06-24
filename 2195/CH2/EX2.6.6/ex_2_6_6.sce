//Example 2.6.6. // absolute error, % error, relative error, % accuracy and % error of full scale reading
clc;
clear;
close;
//given data :
Ae=80;// in volt
Am=79;// in volt
fsd=100;//full scale reading in volt
e=Ae-Am;
disp(e,"absolute error,e(V) = ")
error1=(e/Ae)*100;
disp(error1,"% error (%) = ")
A=1-abs(e/Ae);
disp(A,"relative accuracy,A = ")
p_accuracy=A*100;
disp(p_accuracy,"% accuracy (%)= ")
error2=(e/fsd)*100;
disp(error2,"% error expressed as percentage of full scale reading,(%) = ")
