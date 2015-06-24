//Key:
//f(x) : Objective Function
//ci(x)'s : Constraints

//Variable Declaration:
function [a] = f(x)
    a = -2.0*x(1) - 1.6*x(2)
endfunction

//Calculation
X = [16820,1152]

//Result:
printf("Maximum Profit is $ %.0f /day or $ %f /year",-f(X),-365*f(X))
