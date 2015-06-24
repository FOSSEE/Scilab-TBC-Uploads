//Page Number: 5.33
//Example 5.19
clc;
//Given,
n=16;
Rb=44100; //b/s
//(a) Output signal to quantizing ratio
SNQ=1.76+(6.02*n);
disp('dB',SNQ,'Output signal to quantizing ratio: ');

//(b)Input Bit Rate
IBR=2*Rb*n;
disp('B/s',IBR,'Input bit rate: ');
OBR=2*IBR;
disp('B/s',OBR,'Output bit rate: ');

//(c)Number of bits recorded
//Given, an hours time
//Therefore, time
t=60*60;
NBR=OBR*t;
disp('Bytes',NBR,'Number of bits recorded: ');

//(d) Dictionary
//Given
p=1500;
c=2;
l=100;
w=8;
let=6;
b=7;
d=p*c*l*w*let*b;
disp('Bytes',d,'Number of bits required');

x=NBR/(2*d);
y=round(x);
disp(y,'Number of comparable books');
