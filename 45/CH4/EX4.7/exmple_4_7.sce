//example 4.7 
clc;
clear;
n=input('Enter the no.of terms in ur expression :');//accepting input from user 
for i=1:n 
a(1,i)=input('Enter the term (0-9) :');
end;
disp ('Since at the decoder output we get all the minterms we use them to get the required boolean functions by giving the output lines numbered ' );
disp(a);    //displying the result 
disp('to a mlti-input OR gate.');
