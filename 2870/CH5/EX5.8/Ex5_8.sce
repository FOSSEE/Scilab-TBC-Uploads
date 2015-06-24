clc;clear;
//Example 5.8

//given data
P1=0.8;
P2=0.12;

//from Table A-12
//sat. liq at P1
T1=31.31;
h1=95.47;
//since process is insentropic and at  P2
h2=h1;
hf=22.49;
hg=236.97;
T2=-22.32;

//calculations
x2=(h2-hf)/(hg-hf);
disp(x2,'the final state is');
dT=T2-T1;
disp(dT,'temperature drop in C')
