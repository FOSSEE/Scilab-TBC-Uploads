// Example 7.12:quality factor
clc;
clear;
close;
f=450;//resonant frequency in killo hertz
L=4.2;//inductnace in henry
R=600;//resistance in ohms
Q= round((2*%pi*f*10^3*L)/R);//quality factor
disp(Q,"quality factor is")
