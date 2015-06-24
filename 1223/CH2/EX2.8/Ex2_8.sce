clear;
clc;
//Example 2.8
R1=5;R2=10;//(KOhm) 
V_Y=0.7;//(V)diode cut in voltage
V1=5;V2=-5;//(V)
vt=0;//(V)
//asssuming initially diode D1 is off
//iR1=iD2=iR2=V1-V2-V_Y/(R1+R2)
iD2=(V1-V2-V_Y)/(R1+R2);
printf('\ndiode current=%0.2f mA\n',iD2)
iR1=iD2;
vo=V1-iR1*R1;
printf('\noutput voltage=%0.2f V\n',vo)
v=vo-V_Y;//v=v'
printf('\nVoltage=%0.1f V\n',v)
vt=4;//(V)fig.2.33
//both D1 and D2 are on
vo==vt;
vo=4;
iD2=(V1-vo)/R1;
printf('\ndiode current=%.2f mA\n',iD2)
iR1==iD2;
v=vo-V_Y;
printf('\nV=%.2f V\n',v)
iR2=(v-V2)/R2;
printf('\niR2=%.2f mA\n',iR2)
iD1=iR2-iD2;
printf('\ncurrent through D1=%.2f mA\n',iD1)
