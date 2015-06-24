//clc()
//f(x) = exp(-x) - x
//f'(x) = -exp(-x) - 1
//f"(x) = exp(-x)
xr = 0.56714329;
//E(ti+1) = -f"(x)* E(ti) / 2 * f'(x)
Et0 = 0.56714329;
Et1 = -exp(-xr)* ((Et0)^2) / (2 * (-exp(-xr) - 1));
disp("which is close to the true error of 0.06714329",Et1,"Et1 = ")
Et1true = 0.06714329;
Et2 =  -exp(-xr)* ((Et1true)^2) / (2 * (-exp(-xr) - 1));
disp("which is close to the true error of 0.0008323",Et2,"Et2 = ")
Et2true = 0.0008323;
Et3 =  -exp(-xr)* ((Et2true)^2) / (2 * (-exp(-xr) - 1));
disp("which is close to the true error",Et3,"Et3 = ")
Et4 =  -exp(-xr)* ((Et3)^2) / (2 * (-exp(-xr) - 1));
disp("which is close to the true error",Et4,"Et4 = ")
disp("Thus it illustratres that the error of newton raphson method for this case is proportional(by a factor of 0.18095) to the square of the error of the previous iteration")
 
