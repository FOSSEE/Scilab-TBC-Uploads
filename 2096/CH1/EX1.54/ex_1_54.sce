//Example 1.54://readings
clc;
clear;
x=25-21.9;//in mm
r=2.1;//probable error
SD=r/0.6745;//standard deviation
y=x/SD;//ratio
NR=2*0.3413*100;//no. of readings having deviation with in 3.1mm
NR1=100-NR;//no. of readings EXCEEDING deviation OF 3.1mm
nor= round(NR1/2);// noumber of readings having deviation of 3.1mm
disp(nor,"number of readings having deviation of 3.1mm")
