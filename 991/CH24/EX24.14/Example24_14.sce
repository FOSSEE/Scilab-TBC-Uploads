//example 24.14
clc;
disp('The kanaurgh map for given truth table will be :');
disp('      A''B''  A''B  AB  AB'''); //displaying the given kmap
disp('C''     1    0    0   1');
disp('C      0    1    1   0');
disp("The adjacent cells that can be combined together are cells 000 and 100 and the cells 011 and 111");
disp("By combining the adjacent cells, we get")
disp("      Y = (A''+A)B''C'' + (A''+A)BC")
disp("        = B''C'' + BC")