clc
clear

//input
t1=120;//primary turns of an ideal transformer
ls1=0.24;//self inductance of primary in henry
v=240;//supply voltage in volts
t2=300;//secondary turns of the ideal transformer

//calculations
d=v/ls1;//rate of change of current in A/s
v2=v*(t2/t1);//secondary voltage in volts
M=v2/d;//mutual impedance in henry
ls2=ls1*((t2*t2)/(t1*t1));//self inuctance of the secondary in henry

//output
mprintf('the mutual impedance between the coils is %3.1fH and the self inductance of the secondary winding is %3.1fH',M,ls2)
