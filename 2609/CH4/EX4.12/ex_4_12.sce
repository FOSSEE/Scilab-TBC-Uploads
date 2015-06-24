////Ex 4.12
clc;
clear;
close;
format('v',6);
Beta=0.06;//feedback factor
fo=100;//Hz
AOL=40000;//unitless(at dc)
SFdc=1+AOL*Beta;//sacrifice factor at dc
f=1;//kHz
f=f*10^3;//Hz
SF1=1+AOL*Beta/sqrt(1+f^2/fo^2);//sacrifice factor at 1 kHz
//(a)
ACL=AOL/SFdc;//(unitless)exact close loop gain at dc
disp(ACL,"Exact close loop gain at dc");
//(b)
ACL=1/Beta;//(unitless)approximate close loop gain at dc
disp(ACL,"Approximate close loop gain at dc");
//(c)
AOL=3980;//unitless(at dc)
ACL=AOL/SF1;//(unitless)exact close loop gain at 1kHz
disp(ACL,"Exact close loop gain at 1kHz");
