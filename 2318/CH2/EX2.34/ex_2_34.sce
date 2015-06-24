//Example 2.34: The ratio errror and phase angle error
clc;
clear;
close;
//given data :
I=5;// in A
n=1000/5;// normal ratio
sin_alfa=0.4;
cos_alfa=sqrt(1-sin_alfa^2);
Im=1;// in A
I0=Im/cos_alfa;
Ie=I0*sin_alfa;
del=0;
K=n+(((Ie*cosd(del))+(Im*sind(del)))/I);
er=(n-K)*100/K;
disp(er,"(a). The ratio error,(%) = ")
eph=(180/%pi)*(((Im*cosd(del))-(Ie*sind(del)))/(n*I));
x=round(eph);//
y=eph-x;//
disp("(b). phase angle is "+string(x)+" degree "+string(y*60)+" minutes ")
