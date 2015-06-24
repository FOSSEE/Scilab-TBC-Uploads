clear;
clc;
//Example 13.14
Av2=5768;
C1=12;
Ci=C1*(1+Av2);
printf('\neffective input capacitance=%.2f pF\n',Ci)
Ri2=26000;//gain stage input resistance (Ohm)
Ci=Ci*10^-12;//F
fPD=1/(2*%pi*Ri2*Ci);
printf('\ndominant pole frequency=%.f Hz\n',fPD)
Av=73254;
fT=fPD*Av;
fT=fT*10^-6;//MHz
printf('\nunity gain bandwidth=%.2f MHz\n',fT)
