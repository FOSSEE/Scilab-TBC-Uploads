//example 11.6
clc;
clear;
disp('To analye the circuit we consider x = X(t-τ) where τ is the cummulative propagatin delay from input side up to X.For all  possible combbinations of xAB we get X and Y following the logic relation as shown in the circuit and prepare the following Karnaugh map');
disp('Karnaugh map'); // displaying the kmap
disp('  AB')
disp('x    00      01      11      10');
disp('0    0''/0    0''/0    1/0     0''/0');
disp('1    0/0     0/1     1''/1    1''/0');
disp('State where X = x are stable and primed. Outputs corresponding to ech state and inpt combination are shown beside.');
