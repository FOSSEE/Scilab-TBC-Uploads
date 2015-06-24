//Example 5.5.1 page 5.18

clc;
clear;
del_t_1 = 10*100*10^-9;
Bt_nrz_1 = 0.7/(del_t_1*1000000);
Bt_rz_1 = 0.35/(del_t_1*1000000);
printf("First case. \n");
printf("Bit rate for nrz is:%.1f Mb/sec",Bt_nrz_1);
printf("\nBit rate for rz is:%.2f Mb/sec",Bt_rz_1);
del_t_2 = 20*1000*10^-9;
Bt_nrz_2 = 0.7/(del_t_2*1000000);
Bt_rz_2 = 0.35/(del_t_2*1000000);
printf("\n\nSecond case");
printf("\nBit rate for nrz is:%.3f Mb/sec",Bt_nrz_2);
printf("\nBit rate for rz  is:%.4f Mb/sec",Bt_rz_2);
del_t_3 = 2*2000*10^-9;
Bt_nrz_3 = 0.7/(del_t_3*1000);
Bt_rz_3 = 0.35/(del_t_3*1000);
printf("\n\nThird case");
printf("\nBit rate for nrz is:%d BITS/sec",Bt_nrz_3);
printf("\nBit rate for rz  is:%.1f BITS/sec",Bt_rz_3);
