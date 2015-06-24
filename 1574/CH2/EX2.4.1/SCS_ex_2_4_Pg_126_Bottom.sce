clc;
// Chapter 2 Switched communication systems
//Example 2.4.1,page no 126
//given
//a
C_S1=20/3//speed in characters per second
P_C1=1/C_S1//periods per character
mprintf('(a)\nperiods per character is:%f msec\n',P_C1*1e3)
E_C1=7.5//elements per character
P_E1=P_C1/E_C1//period per element
mprintf('period per element is:%f msec\n',P_E1*1e3)
Sb1=1/P_E1//speed in bauds
mprintf('speed is:%f bauds\n\n',Sb1)
//b
C_S2=10//speed in characters per second
P_C2=1/C_S2//periods per character
mprintf('(b)\nperiods per character is:%f msec\n',P_C2*1e3)
E_C2=7.5//elements per character
P_E2=P_C2/E_C2//period per element
mprintf('period per element is:%f msec\n',P_E2*1e3)
Sb2=1/P_E2//speed in bauds
mprintf('speed is %f bauds\n\n', Sb2)
//c
C_S3=10//speed in characters per second
P_C3=1/C_S3//periods per character
mprintf('(c)\nperiods per character is:%f msec\n',P_C3*1e3)
E_C3=10//elements per character
P_E3=P_C3/E_C3//period per element
mprintf('period per element is:%f msec\n',P_E3*1e3)
Sb3=1/P_E3//speed in bauds
mprintf('speed is %f bauds\n',Sb3)
