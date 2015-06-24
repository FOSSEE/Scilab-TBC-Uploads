//Ex:94
clc;
clear;
close;
b_c=72;//carrier BW in MHz
f_l1=2100;//first local oscillator frequency in MHz
f_i=140;// first intermediate freq in MHz
f_smx=11700;//max downlink freq spectrum in MHz
f_smn=10700;//min downlink freq spectrum in MHz
f_c=f_l1+f_i;//in MHZ
f_l2mx=f_smx-f_c;// in MHz
f_l2mn=f_smn-f_c;// in MHz
printf("The center frequency of BPF_1=%f GHz", f_c/1000);
printf("\n The BW=%f MHz", f_i);
printf("\n The max second oscillator frequency =%f GHz", f_l2mx/1000);
printf("\n The min second oscillator frequency =%f GHz", f_l2mn/1000);