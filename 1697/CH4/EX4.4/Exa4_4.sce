//Exa 4.4
clc;
clear;
close;
//given data :
n=10;//no. of elements
//d=lambda/4 separation in meter
disp("For broad side array : ")
disp("D=2*n/(lambda/d)");
disp("Putting d=lambda/4 we get D=2*n/4")
D=2*n/4;//directivity : unitless
Ddb=10*log10(D);//in db
disp(Ddb,"For broad side array D in db = ");
disp("For end fire array : ")
disp("D=4*n/(lambda/d)");
disp("Putting d=lambda/4 we get D=4*n/4")
D=4*n/4;//directivity : unitless
Ddb=10*log10(D);//in db
disp(Ddb,"For end fire array D in db = ");