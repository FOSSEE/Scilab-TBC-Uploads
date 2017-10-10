clc;
disp("Example 5.5")
// WE need to calculate the integral of the manipulated expression in terms of y/delta
int= integrate('2*y-(5*y*y)+(4*y*y*y)-(y*y*y*y)','y',2,1)
disp(int, "Momentum thickness is ")
