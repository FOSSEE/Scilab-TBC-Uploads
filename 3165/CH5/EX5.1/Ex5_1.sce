//Example 5 . 1
//To Compare the Va r i enc e o f Output due to A/D Conve r s i on p r o c e s s
// y ( n ) =0.8 y ( n􀀀1)+x ( n )
clc ;
n =8; // Bi t s
r =100; //Range 
Q =2* r /(2^ n); // Qu a n t i z a t i o n St ep S i z e
Ve =(Q ^2) /12;
Vo=Ve *(1/(1 -0.8^2) );
disp (Q, 'QUANTIZATION STEP SIZE =' );
disp (Ve , 'VARIANCE OF ERROR SIGNAL =' );
disp (Vo , 'VARIANCE OF OUTPUT =' );
