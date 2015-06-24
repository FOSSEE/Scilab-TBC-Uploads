//chapter 9
//example 9.1
//page 323
R=10*10^3;C=.001*10^-6;
Rf=100*10^3;R1=10*10^3;
fc=1/(2*3.14*R*C);//cut off frequency
disp(fc)
Ao=1+(Rf/R1);//pass band voltage gain
disp(Ao)//pass band voltage gain