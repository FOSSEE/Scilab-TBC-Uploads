clear;
clc;
v=400e3;
mvan=30000e6;
mw=1500e6;
mvac=600e6;
n=mvan/mw;
mvae=mvan-mvac;////the difference in result is due to erroneous calculation in textbook.
e=mvae/mw;
mprintf("the SC raio=%d\neffective fault level=%fMVA\neffective circuit level of HVDC system(ESCR)=%f",n,mvae/1e6,e);
disp('the difference in result is due to erroneous calculation in textbook.');
