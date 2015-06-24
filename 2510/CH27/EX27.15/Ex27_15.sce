//Key:
//f(x) : Objective Function
//ci(x)'s : Constraints

//Variable Declaration:
function [ans] = f(x)
    ans = -1.70*x(1) - 2*x(2)
endfunction

//Calculation
X = [7500,6000]

//Result:
printf("Maximum Profit is $ %.1f /day or $ %.1f /year",-f(X),-365*f(X))
