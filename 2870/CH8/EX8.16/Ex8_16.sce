clc;clear;
//Example 18.16

//given data
T0=70+460;
T1=50;
T2=240;
T3=130;
//as dicussed in example 7-20
m1=300;
m2=22.7;
m3=322.7;

//from steam tables
h1=18.07;
s1=0.03609;
h2=1162.3;
s2=1.7406;
h3=97.99;
s3=0.18174;

//calculations
Wrev=m1*(h1-T0*s1)+m2*(h2-T0*s2)-m3*(h3-T0*s3);
Wrev=round(Wrev);
disp(Wrev,'the reversible power in Btu/min')
Xdestroyed=Wrev;
disp(Xdestroyed,'the rate of exergy destruction in Btu/min')
