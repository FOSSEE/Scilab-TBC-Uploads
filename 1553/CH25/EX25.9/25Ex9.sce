//chapter 25 EX 9
clc;
clear;
close;
l=6; b=12; h=15;
volume=l*b*h;

side_largest=gcd(int32([l b h]));   //side of largest cube
vol_largestcube=side_largest^3;
num_of_cubes=volume/vol_largestcube;
printf("The least possible cubes are %d",(volume/vol_largestcube));
