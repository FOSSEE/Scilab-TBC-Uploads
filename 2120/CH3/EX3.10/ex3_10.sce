// Exa 3.10
clc;
clear;
close;
// Given data
Tp= 'a+b*Tq+lamda*Tq^2';// relation between Tp and Tq
Tp0=0;//in °C (at ice point)
Tq0=0;//in °C (at ice point)
// Putting these values in relation, we get
a=0;
Tp100=100;//in °C ( at steam point)
Tq100=100;//in °C ( at steam point)
// Tp100= b*Tq100+lamda*Tq100^2         (i)
Tp=45;// in °C (in oil path)
Tq=43;// in °C (in oil path)
// Tp= b*Tq+lamda*Tq^2                          (ii)
b= (Tp100-Tp*Tq100^2/Tq^2)/(Tq100-Tq100^2/Tq);// From eq (i) and (ii)
lamda= (Tp-b*Tq)/Tq^2;
Tp=20;
//lamda*Tq^2+b*Tq-Tp=0
P= [lamda b -Tp];
Tq= roots(P);// in °C
disp(Tq,"When P reads 20°C, then the readings of  Q in °C are")
disp(Tq(2),"The realistic value of Tq in °C is : ")
