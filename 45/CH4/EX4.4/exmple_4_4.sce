//example 4.4 
clc;
clear;
r= input('Enter the value of R (0 or 1) :'); // accepting the inputs from the user
t= input('Enter the value of T (0 or 1) :');
sel = input('Enter the values of ABCD :');
strb = bitcmp(bitand(r,t),1);
if strb==0  then // checking whether strobe is high or low 
    if sel ==1100 then
        y='The two pulses are steered to the Y12 output';
    else 
        y='The output Y12 remains in the High state';
    end
    else 
    y='The output Y12 remains in the High state';
end
disp(y) //displaying result