//clear//
//Caption:Linear Predictor of Order one
//Example3.6: LINEAR PREDICTION: Predictor of Order One
clear;
close;
clc;
Rxx = [0.6 1 0.6];
h01 = Rxx(3)/Rxx(2);  //Rxx(2) = Rxx(0), Rxx(3) = Rxx(1)
sigma_E = Rxx(2) - h01*Rxx(3);
sigma_X = Rxx(2);
disp(sigma_E,'Predictor-error variance')
disp(sigma_X,'Predictor input variance')
if(sigma_X > sigma_E)
  disp('The predictor-error variance is less than the variance of the predictor input') 
end
