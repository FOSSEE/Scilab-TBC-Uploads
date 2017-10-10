//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 12 ; Example 12.6
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

C1=[8e-3 10 0]                  //Coefficients of cost equation for unit 1
C2=[9e-3 8  0]                  //Coefficients of cost equation for unit 2

dC1=[2*C1(1) C1(2)]        //Coefficients of incremental cost equation for unit 1
dC2=[2*C2(1) C2(2)]        //Coefficients of incremental cost equation for unit 2
result=[];
for PT=500:100:1500
    P1=(dC2(1)*PT+(dC2(2)-dC1(2)))/(dC2(1)+dC1(1));
    P2=PT-P1;
    dC1value=dC1(1)*P1+dC1(2);
    dC2value=dC2(1)*P2+dC2(2);
    CT=C1(1)*P1^2+C1(2)*P1+C1(3)+C2(1)*P2^2+C2(2)*P2+C2(3);
    result=[result;PT P1 P2 dC1value CT]
end

disp(result,' PT(MW)     P1(MW)      P2(MW)  dC1=dC2($/MWhr) CT($/hr)');
