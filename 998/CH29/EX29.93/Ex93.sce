//Ex:93
clc;
clear;
close;
b_c=36;//carrier BW in MHz
f_d=4000;//Dowm link freq in MHz
f_i=70;// first intermediate freq in MHz
f_smx=4200;//max uplink freq spectrum in MHz
f_smn=3700;//min uplink freq spectrum in MHz
f_dl2=1000;// in MHz
f_l2=f_d-f_dl2;// in MHz
f_l1=f_d-f_i-f_l2;// in MHz
printf("The max second oscillator frequency =%f GHz", f_l2/1000);
printf("\n The min second oscillator frequency =%f MHz", f_l1);
printf("\n The center frequency of BPF-1 =%f GHz", f_dl2/1000);
printf("\n The BW=%f MHz", b_c);