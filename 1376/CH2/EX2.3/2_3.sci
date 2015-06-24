// 2.3
clc;
a=0.5/2;
b=0.25+0.4;
Pr=4.5;
C=(0.024*Pr)/(log10(b/a))
C_total=300*C
printf("\ncapacitance of the cable=%.2f uF",C_total)
