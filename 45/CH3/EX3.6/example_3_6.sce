//example 3.6
// this program needs kmap.sci and noof.sci
 clc
 Y=[7 9 10 11 12 13 14 15];//given logic equation 
 k=[0 0 0 0;0 0 1 0 ; 1 1 1 1; 0 1 1 1]; // minimizing it using 4-variable kmap
 disp("The minimal expression of Y from the following Kmap is :');
 kmap(k); //calling the Kmap function
 