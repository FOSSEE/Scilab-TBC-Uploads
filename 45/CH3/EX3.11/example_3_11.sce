//example 3.11 
// this program needs kmappos.sci and noof.sci

clc
disp('The given kmap is '); //displaying the given kmap
disp('      C''D''  C''D  CD  CD''');
disp('A''B''    0    0    0   0');
disp('A''B     0    0    0   1');
disp('AB      1    1    1   1');
disp('AB''     1    1    1   1');
disp("The simplest POS form of following Kmap is :');

k= [0 0 0 0;0 0 0 1 ;1 1 1 1; 1 1 1 1];
kmappos(k);//calling the Kmappos function
