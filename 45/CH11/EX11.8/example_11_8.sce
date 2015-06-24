//example 11.8
// this program requires 
//kmp3abx.sci
//noof.sci
//noof0.sci 
//above three functions are first execute before executing this program 
clc;
disp('State table through karnaugh map'); // state table through  kmap 
disp('     00      01      11      10');
disp('a    a''      a''      b        b');
disp('b    a       b''      b''       b'''); 
disp('If we represent current state a as x = 0 and b as x =1 the noutput X can be expressed as ');
j=[0 0  1 1 ; 0 1 1 1]; 
J= kmap3abx(j); // finding the minimized expresion using 3-variable kmap
disp('The minimised expression J');
disp(J); // displaying the minimized expression