

//example 4.42
//calculate mean precipitaion using thiesson polygon method
clc;funcprot(0);
//given
a=4;               //dimension of plot sides
P1=4.8;P2=13;P3=8;P4=5.4;P5=3.2;P6=9.4;     //precipitaion at respective stations
A1=a^2/8+a^2/(4*1.73);
A2=a^2/8;
A3=A2;A4=A1;
A5=a^2/(4*1.73);
A6=a^2/2;
A=A1+A2+A3+A4+A5+A6;
Pavg=(P1*A1+P2*A2+P3*A3+P4*A4+P5*A5+P6*A6)/A;
mprintf("Mean precipitaion=%f cm.",Pavg);


