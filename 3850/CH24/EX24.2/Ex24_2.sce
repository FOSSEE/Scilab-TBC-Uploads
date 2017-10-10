
//To calculate the rms speed of hydrogen molecules at the same temperature

//Example 24.2

clear;

clc;

v1=490;//rms speed of nitrogen at 273 Kelvin

m1=28;//molecular weight of nitrogen

m2=2;//molecular weight of hydrogen

v2=v1*sqrt(m1/m2);//rms speed of hydrogen at 273 Kelvin

printf("rms speed of hydrogen=%d m/s   (wrong answer given in the book)",v2);
