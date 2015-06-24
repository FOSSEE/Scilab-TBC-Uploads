//example 3.7
// this program needs kmap.sci and noof.sci
clc;
disp('The kanaurgh map for given truth table will be :');
disp('      C''D''  C''D  CD  CD'''); //displaying the given kmap
disp('A''B''    1    0    0   0');
disp('A''B     0    0    0   0');
disp('AB      x    x    x   x');
disp('AB''     0    0    x   x');
disp('The truth table has output one only for the input condition 0000. The corresponding fundamental product is A''B''C''D''');
k=[1 0 0 0 ; 0 0 0 0; 0 0 0 0;0 0 0 0];
kmap(k);//calling the Kmap function

