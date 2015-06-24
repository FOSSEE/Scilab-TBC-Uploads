//Example 5.6: 
clc;
clear;
close;
//given data :
//ie=15*sin 400*t+1.5*sin 800*t + 1.2*sin 1200*t + 0.5*sin 1600*t  given equation
I2=1.5;//in A
I1=15;//in A
I3=1.2;//in A
I4=0.5;//in A
D2=(I2/I1)*100;//Second percentage harmonic distortion
D3=(I3/I1)*100;//Third percentage harmonic distortion
//in book I2 is mentioned wrongly in place of I1
D4=(I4/I1)*100;//Fourth percentage harmonic distortion
disp("part (i)")
disp(D2,"Second percentage harmonic distortion (D2) is ,(%)=")
disp(D3,"Third percentage harmonic distortion (D3) is ,(%)=")
format('v',5)
disp(D4,"Fourth percentage harmonic distortion (D4) is ,(%)=")
disp("part (ii)")
D=sqrt(D2^2+D3^2+D4^2)/100;//Distortion Factor
P1=1;//assume
P=(1+D^2)*P1;//in W
peri=((P-P1)/P1)*100;//percentage increase in power due to distortion
disp(peri,"percentage increase in power due to distortion is ,(%)=")

