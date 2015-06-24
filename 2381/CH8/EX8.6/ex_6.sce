//Example 6// speed,stress and change in frequency
clc;
clear;
close;
n=175;//Hz
l=1.5;//m
v=2*n*l;//m/s
d=7.8*10^3;//kg/m^3
st=v^2*d;//N/m^2
per=3;//% increament
T=1;//assume
td=(1+per/100)*T;//
x=(((1/2)*(per/100)));//
td=x*100;//
disp(v,"velocity is,(m/s)=")
disp(st,"stress is,(N/m^2)=")
disp(td,"percentage change in frequency is,(%)=")
