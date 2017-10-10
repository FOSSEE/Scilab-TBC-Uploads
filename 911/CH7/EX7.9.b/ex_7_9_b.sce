// example 7.9(b)//
clc
//clears the screen//
clear 
//clears all variables//
disp('here ABCD = 1011 and G1''=1 and G2''=1')
r= input('Enter the value of G1'' (0 or 1) : ' ); 
//accepting the inputs from the user//
t=input('Enter the value of G2'' (0 or 1): ' );
sel = input ('Enter the values of ABCD : ' );
strb = bitcmp(bitand (r,t),1);
if strb ==0 then
    //checking whether strobe is high or low//
if sel ==1100 then
y= 'The two pulses are steered to the Y12 output ' ;
else
y= 'The output Y12 remains in the High state ';
end
else
y='The output Y12 remains in the High state ' ;
end
disp (y)
//displaying result//