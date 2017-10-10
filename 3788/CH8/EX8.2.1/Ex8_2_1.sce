//Example 8.2.1
//find the physical pathlength and path attenuation
clc
clear
elevationangle=35
height=3
specificattenation=2
L=height/sind(35)
printf("The physical pathlength is %f km \n",L)
//error for L part
A=specificattenation*5.23
printf("The path attenuation is %f dB " ,A)
