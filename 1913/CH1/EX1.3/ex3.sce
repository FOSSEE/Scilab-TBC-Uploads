clc
clear
//Input data
p1=2070;//Initial pressure of gas in kN/m^2
p2=207;//Final pressure of gas in kN/m^2
v1=0.014;//Initial volume of gas in m^3
n=1.35;//constant

//Calculations
P=p1/p2;//Pressure ratio
v2=v1*(P^(1/1.35));//Final volume of gas in m^3
W=(p1*v1-p2*v2)/(n-1);//Work done in kJ

//Output
printf('(a)Final volume of gas v2= %3.5f m^3 \n (b)Work done by the gas during the expansion W= %3.2f kJ',v2,W)
