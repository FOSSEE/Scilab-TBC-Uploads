//Ex:3.21
clc;
clear;
close;
// For N array elements
// Etr/Eo=sin(ny/2)/sin(y/2), where y=Bdcos(x)+dl=Bdcos(x), because dl=0
// The null in the pattern occur when, ny/2=k*%pi
// (nBdcos(x))/2=%pi, for the first nulls
// or     cos(x)=2*%pi/(nBd)=2*%pi/(n*(2*%pi/L)*(L/4))=(4/n)
// In the broadeside array main beam is directed in x=90 degree. Therefore half beam width will be
// a=90-x1
// or x1=90-a
// Thus  cos(x1)=cos(90-a)=sin(a)
// or sin(a)=(4/n)
// Now the beam width for n elements array will be 2a=2.asin(4/n)
// Thus
BW1=2*(asin(4/5)*180/%pi);// Bandwidth for n=5
BW2=2*(asin(4/6)*180/%pi);// Bandwidth for n=6
BW3=2*(asin(4/7)*180/%pi);// Bandwidth for n=7
BW4=2*(asin(4/8)*180/%pi);// Bandwidth for n=8
BW5=2*(asin(4/9)*180/%pi);// Bandwidth for n=9
BW6=2*(asin(4/10)*180/%pi);// Bandwidth for n=10
printf("The Bandwidth for n=5 = %f degree", BW1);
printf("\n TheBandwidth for n=6 = %f degree", BW2);
printf("\n The Bandwidth for n=7 = %f degree", BW3);
printf("\n The Bandwidth for n=8 = %f degree", BW4);
printf("\n The Bandwidth for n=9 = %f degree", BW5);
printf("\n The Bandwidth for n=10 = %f degree", BW6);