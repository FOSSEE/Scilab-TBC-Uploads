//Example 14.4
clc;

E=10;         //Applied potential in V
gain=100;     //Rf/R1 is the gain of diff. inst. amp.
Vo=1.5;       //Output of diff. inst. amp.in V
R=100;
del_R=(Vo*R)/(gain*E);
printf('\nChange in resistence in each gauge element %.2f ohm\n',del_R)