//example 24.15
clc;
disp('The kanaurgh map for given truth table will be :');
disp('      A''B''  A''B  AB  AB'''); //displaying the given kmap
disp('C''D''    1    0    0   1');
disp('C''D     0    1    1   0');
disp('CD      0    0    0   0');
disp('CD''     0    0    0   0');
disp("In the above K-map, the following adjacent cells can be combined to form two pairs of adjacent 1s. Thus, the cell pairs are B''C''D'' and BC''D. The simplified function is Y = B''C''D'' + BC''D");