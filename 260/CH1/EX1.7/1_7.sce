//Eg-1.7
//pg-19

clear
clc


F(1)=1;
F(2)=1;
eps=10^(-12);
err=100;
i=1;
while err>=eps
    F(i+2)=F(i+1)+F(i);
    err=abs((F(i+1)/F(i+2)-(F(i)/F(i+1))));
    i=i+1;
    end
goldenratio=F(i)/F(i+1);
disp(goldenratio)