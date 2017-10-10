//Example 3.7 Reduction using K-Map
clc; //clears the console window
clear; //clears the variable browser
disp('f = a''b''c + a''bc'' + a''bc + ab''c''')
disp('The mapping is shown below')
disp('      A''B''  A''B  AB  AB''')
disp('C''     1    1    -    1')
disp('C      -    1    -    -') //The kmap for f is displayed//
disp('f = a''b + b''c''')
