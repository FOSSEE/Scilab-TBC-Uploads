//To Calculate the Temperature of Sun
//Example 28.3

clear;

clc;

b=0.288;//Wein Constant in cm-K

Lambda=470*10^(-7);//Wavelength corresponding to maximum intensity in centimetres

T=b/Lambda;//Temperature at the Surface of Sun

printf("Temperature at the sun surface = %f K",T);//The answer provided in the textbook is wrong
