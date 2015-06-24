//example 3.12
clc
disp('The given kmap is '); //displaying the given kmap
disp('      C''D''  C''D  CD  CD''');
disp('A''B''    0    0    1   0');
disp('A''B     0    0    1   1');
disp('AB      x    x    x   1');
disp('AB''     x    x    x   0');
disp('In a Karnaugh map if don''t care condition exits, we may consider them as zeros if that gives a larger group size.');
disp("The simplest POS form of following Kmap is :');

k= [0 0 1 0;0 0 1 1 ;0 0 1 1; 0 0 1 0];
kmappos(k); //calling the Kmappos function
