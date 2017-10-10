//Solution 1-5
WD=get_absolute_file_path('1_05_solution.sce');
datafile=WD+filesep()+'1_05_example.sci';
clc;
exec(datafile)
function [Z] =equations(X)
    x = X(1);
    y = X(2);
    Z(1) = x - y - difference;
    Z(2) = x**2 + y**2 - x -y - sum_squares_minus_sum;
endfunction

[X, v, info] = fsolve([1,1], equations);
printf("x = %f\n", X(1));
printf("y = %f\n", X(2));