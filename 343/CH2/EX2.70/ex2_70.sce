clc;
Z=8.66+%i*5;      //Assigning values to parameters
Y=1/Z;
G=real(Y);
B=imag(Y);
disp("Mho",G,"G");
disp("Mho",B,"B");