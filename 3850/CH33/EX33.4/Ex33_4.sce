
//To Calculate the Electric Current

//Example 33.4

clear;

clc;

m=0.972;//Mass of Chromium deposited in grams

Z=0.00018;//Electrochemical Equivalent of Chromium

t=3*3600;//Time is in seconds

I=m/(Z*t);//Electric Current required to deposit the Chromium in three hours

printf("Electric Current required to deposit 0.972g of Chromium in three hours = %f A",I);
