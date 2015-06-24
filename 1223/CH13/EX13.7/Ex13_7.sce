clear;
clc;
//Example 13.7
Av2=285;
C1=30;
Ci=C1*(1+Av2);
printf('\ninput capacitance=%.2f pF\n',Ci)
Ri2=4.07;
Ract=7.18;
ro4=5.26;
Ro1=Ract*ro4/(Ract+ro4);
printf('\ngate stage input resistance=%.2fMOhm \n',Ro1)
Req=Ro1*Ri2/(Ri2+Ro1);
printf('\nequivalent resistance=%.2f MOhm\n',Req)
Req=Req*10^6;//Ohm
Ci=Ci*10^-12;//F
fPD=1/(2*%pi*Req*Ci);
printf('\ndominant pole frequency =%.2fHz\n',fPD)
