//Example 2 . 1 4
//Program to Compute Cros s􀀀c o r r e l a t i o n o f g i v e n s e q u e n c e s
// x ( n ) =[1 2 1 1 ] , h ( n ) =[1 1 2 1 ] ;
clc ;
x =[1 2 1 1];
h =[1 1 2 1];
h1 =[1 2 1 1];
y= convol (x,h1);
disp ( round (y));
