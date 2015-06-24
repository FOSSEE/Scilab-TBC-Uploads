//Page Number: 457
//Example 9.7
clc;
//Given
S11=0.90;
S12=0;
S21=2.40;
S22=0.80;

Gmax=(S21*S21)/((1-(S11)^2)*(1-(S22)^2));
Gdb=10*log10(Gmax);
disp(Gdb,'Maximum gain:');
