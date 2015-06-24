clc;
r=100;  //resistance in Ohm
v=10;  //in volt
d=10;  //distance in feet
c=10*10^-6;  //capacitor in Farad
i=v/r;  //current
disp(i,"The wave travels the length of the line in 20 ns. The current that flows in the capacitor is the short-circuit current = ");  //displaying result
ch=40*10^-9*0.1;  //charge
disp(ch,"The charge that flows in 40 ns = ");  //displaying result
v1=ch/c;  //voltage
disp(v1,"Voltage in a 10*10^-6 Farad Capacitor = ");  //displaying result