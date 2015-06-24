
//Exa:7.6
clc;
clear;
close;
//Given:
deviation=3;//in KHz
roll_off=6;//in KHz
full_dev=deviation*roll_off;
half_dev=full_dev/2;
printf("\n full deviation = %f dB\tcorresponds to 12.6mV",-full_dev);
printf("\n half deviation = %f dB\tcorresponds to 35.5mV",-half_dev);