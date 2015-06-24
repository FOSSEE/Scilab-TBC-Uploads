// Exa 2.2
format('v',6);clc;clear;close;
// Given data
At = 150;// in V
Am = 149;// in V
e = At-Am;//absolute error in V
disp(e,"The absolute error in V is");
e_r = ((At-Am)/At)*100;// e_r stands for %e_r in %
disp(e_r,"The percentage error in % is");
A = 1 - abs( (At-Am)/At );// relative accuracy
disp(A,"The Relative accuracy is");
a = A*100;//Relative accuracy  in %
disp(a,"The percentage accuracy in % is");
fsd = 200;//full scale reading in V
// Percentage error 
PerError = ((At-Am)/fsd)*100;// in %
disp(PerError,"Percentage error expressed as percentage of full scale reading  in % is");
