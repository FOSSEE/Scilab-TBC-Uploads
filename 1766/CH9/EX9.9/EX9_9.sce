clc;funcprot(0);//Example 9.9
//Initilisation of Variables
d=0.05;.....//
L=1;
A1a=d;.....//Length of side 1 for configeration 1
A2a=1.2*d;.....//Length iof side 2 for configeration 1
A3a=0.5*d;.....//Length iof side 3 for configeration 1
A2b=%pi*d*L;.....//Length iof side 2 for configeration 2
A1b=8*d*L;.....//Length of side 1 for configeration 2
A2c=d*L;.....//Length of side 2 for configeration 3
A1c=(%pi/2)*d*L;.....//Length of side 1 for configeration 3
//Calculations
F1_2a=(A1a+A2a-A3a)/(2*A1a);.....//Shape factor between side 1& 2 for configuration 1
F1_2b=(A2b/A1b)*L;.....//Shape factor between side 1& 2 for configuration 2
F1_2c=A2c/A1c;.....//Shape factor between side 1& 2 for configuration 3
disp(F1_2a,"Shape factor between side 1& 2 for configuration 1")
disp(F1_2b,"Shape factor between side 1& 2 for configuration 2")
disp(F1_2c,"Shape factor between side 1& 2 for configuration 3")
