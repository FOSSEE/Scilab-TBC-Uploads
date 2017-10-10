clc;
clear all;
disp("Thickness of insulation")
La=1;//m
Lb=0.04;//m
kA=0.7;// W/(m*C)
kB=0.48;//W/(m*C)
kC=0.065;//W/(m*C)
//Q1 = A(delT)/(La/kA+Lb/kB+)=A(delT)/(0.1/0.7+0.04/0.48)
//Q2 = A(delT)/(La/kA+Lb/kB+Lc/kC)=A(delT)/(0.1/0.7+0.04/0.48+x/0.065)
//Q2=(1-0.8)Q1
//A(delT)/(0.1/0.7+0.04/0.48+x/0.065)=0.2*A(delT)/(0.1/0.7+0.04/0.48)
//0.1/0.7+0.04/0.48+x/0.065 =(0.1/0.7+0.04/0.48)/0.2
x=(0.2261/0.2-0.2261)/15.385;//m
disp ("mm",x*1000,"thickness of the rock wool insulation should be = ")
