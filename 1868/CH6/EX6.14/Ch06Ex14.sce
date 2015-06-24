// Scilab code Ex6.14: Pg 219 (2005)
clc; clear;
x = [2.5, 3.7, 1.4, 7.9, 6.2, 5.4, 8.0, 6.4, 4.1, 5.4, 7.0, 3.3, 4.2, 8.8, 6.2, 7.1, 5.4, 5.3]; // Data entries
sum_x = 0;      // Initialize the accumulator
sum_x_sq = 0;   // Initialize the second accumulator
N = 18;     // Total number of data points
for i = 1:1:N
    sum_x = sum_x + x(i);   // Sum of data
    sum_x_sq = sum_x_sq + x(i)^2; // Sum of square of data
end
x_av = sum_x/N;     // Average of data
x_sq_av = sum_x_sq/N;   // Mean square value
sigma = sqrt(x_sq_av-x_av^2);   // Standard deviation from averages
printf("\nThe standard deviation from averages = %4.2f", sigma);


// Result
// The standard deviation from averages = 1.93 
