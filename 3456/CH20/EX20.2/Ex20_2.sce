//Example 20.2
//Forming Limit Criteria
//Page No. 675
clc;clear;close;

d=0.1;                    //in inches
mj_d=0.18;                    //in inches
mn_d=0.08;                    //in inches
e1=(mj_d-d)/d;
e2=(mn_d-d)/d;
printf('\nMajor Strain = %g percent \nMinor Strain = %g percent',e1*100,e2*100);
