// Calculate the range of readings specified interms of f.s.d. and true value
clc;
disp('Range when specified interms of f.s.d.')
Error_fsd=1*1000/100'
Range_lower_value=100-Error_fsd;
disp(Range_lower_value,'Lower value of range (kN/m2)')
Range_upper_value=100+Error_fsd;
disp(Range_upper_value,'Upper value of range (kN/m2)')
disp('Range when specified interms of True value')
Error_true=1*100/100'
Range_lower_value=100-Error_true;
disp(Range_lower_value,'Lower value of range (kN/m2)')
Range_upper_value=100+Error_true;
disp(Range_upper_value,'Upper value of range (kN/m2)')