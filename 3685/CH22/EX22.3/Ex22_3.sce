clc
// Given that
lambda = 10 // Mean free path of the gas in cm
N0 = 10000 // No of free paths
x1 = 10 // In cm
x2 = 20 // In cm
x3 = 50 // In cm
x4 = 5 // In cm
x5 = 9.5 // In cm
x6 = 10.5 // In cm
x7 = 9.9 // In cm
x8 = 10.1 // In cm
printf("\n Example 22.3 \n")
// For x>10 cm
N1 = N0*(exp(-1))
// For x>20 cm
N2 = N0*(exp(-2))
// For x>50 cm
N3 = N0*(exp(-5))
function y=f(x), y = (-N0/lambda)*(exp((-x)/lambda)),
endfunction
// For 5>x>10 cm
N4 = intg(x4,x1,f)
// For 9.5>x>10.5 cm
N5 = intg(x5,x6,f)
// For 9.9>x>10.1 cm
N6 = intg(x7,x8,f)
// For x=10 cm
N7 = intg(x1,x1,f)
printf("\n The no of free paths which are longer than, \n 10 cm = %d,\n 20 cm = %d,\n 50 cm = %d,\n\n The no of free paths which are between,\n 5 cm and 10 cm = %d,\n 9.5 cm and 10.5 cm = %d,\n 9.9 cm and 10.1 cm = %d,\n\n The no of free paths which are exactly 10 cm = %d",ceil(N1),ceil(N2),ceil(N3),floor(N4),floor(N5),floor(N6),N7)

