//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-3 Ex3.2.a Pg No. 96
//Title:Residence time for four STR's in series
//========================================================================================
clear
clc
//INPUT
X_A=0.95;//Given conversion
t_batch=6;//Batch time to reach the desired conversion
N=4//No.of reactors in series

//CALCULATION
k=log((1/(1-X_A)))/t_batch;//Refer equation 3.29 Pg No. 90
t_1=((1/(1-X_A))^(1/N)-1)/k;//Refer equation 3.40 Pg No. 94
t_Tot=N*t_1;

//OUTPUT
//Console Output
mprintf('\nThe total residence time of the four reactors in series= %0.2f hr',t_Tot);

//File Output
fid=mopen('.\Chapter3_Ex2_a_Output.txt', 'w');
mfprintf(fid,'\nThe total residence time of the four reactors in series= %0.2f hr',t_Tot);
mclose(fid);
//================================================END OF PROGRAM=================================


