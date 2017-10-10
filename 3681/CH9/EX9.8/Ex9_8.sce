// Calculating the maximum permissible output from a machine
clc;
disp('Example 9.8, Page No. = 9.33')
// Given Data
D = 2;// Diameter (in meter)
ac = 50000;// Specific electric loading
ez = 7.5;// emf generated in a conductor at no load (in Volts)
// Calculation of the maximum permissible output from a machine
P = %pi*D*ac*ez*10^(-3);// Maximum permissible output (in kW)
disp(P,'Maximum permissible output (kW)=');
//in book answer is 2350 (kW).  The answers vary due to round off error
