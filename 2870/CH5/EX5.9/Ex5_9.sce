clc;clear;
//Example 5.9

//given data
T1=140;
T2=50;
T3=110;
P=20;

//for a compressed liq at given temp
h1=107.99;
h2=18.07;
h3=78.02;

//calculations
//Mass balance min =  mout So, m1+m2 = m3
//Energy balance Ein = Eout So, m1*h1 + m2*h2 = m3*h3
//combining realations
//m1*h1 + m2*h2 = (m1+m2)*h3
//dividing by m2 and y=m1/m2
//we get, yh1 + h2 = (y+1)*h3
y=(h3-h2)/(h1-h3);
y=round(y);
disp(y,'the ratio of mass flow rates')
