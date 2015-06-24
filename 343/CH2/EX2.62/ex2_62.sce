clc
I=25*%i;           //Assigning values to parameters
Z1=3-%i*4;
Z2=10;
I1=I*Z2/(Z1+Z2);
I2=I-I1;
disp("Amperes",polar(I1),"Current I1");
disp("Amperes",polar(I2),"Current I2");