clear;
clc;

//Example 2.4
//Caption : Program to find the Heat flow in the Path

//Given values
W_acb=40;//J
Q_acb=100;//J
W_aeb=20;//J
W_bda=30;//J

//Solution

del_U_ab=Q_acb-W_acb;

//(a)
Q_aeb=del_U_ab-W_aeb;//J
disp('J',Q_aeb,'(a)Heat Flow in acb')

//(b)
del_U_ba=-del_U_ab;//J
Q_bda=del_U_ba-W_bda;
disp('J',Q_bda,'(b)Heat Flow in bda')

//End