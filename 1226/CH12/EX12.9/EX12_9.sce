clc;funcprot(0);//EXAMPLE 12.9
// Initialisation of Variables
p1=145;...........//injection pressure in bar
p2=235;.........//Injection pressure in bar (2nd case)
t1=16;.............//spray penetration time in milliseconds
s1=22;................//spray penetration length in cm
s2=22;.................//spray penetration length in cm (2nd case)
pc=30;.................//combustion chamber pressure in bar
//calculations
delp1=p1-pc;
delp2=p2-pc;
t2=(s2/s1)*t1*sqrt(delp1/delp2);..........//Spray time in seconds for 2nd case
//Given that s=t*sqrt(delp)
disp(t2,"The time required for spray penetration at an injection pressure of 235 bar in milliseconds:")
