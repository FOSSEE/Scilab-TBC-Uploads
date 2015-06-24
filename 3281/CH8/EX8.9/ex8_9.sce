//Page Number: 434
//Example 8.9
clc;
//Given
e=0.0001;
s=330;

//Charge transfer effciency
n=1-e;

//Final charge pulse
//x=P/P0
x=(1-(e*s));
disp(x,'Final charge pulse:');
