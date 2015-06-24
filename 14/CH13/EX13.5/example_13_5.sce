//Chapter 13
//Page 368
//Example 13.5
//transformer
clear;clc;
//Given
V_ht = 345e3;
V_lt = 34.5e3;
P = 50e6;
P_short_term = 60e6;
I_ht = P_short_term / (sqrt(3) * V_ht);
I_lt = P_short_term / (sqrt(3) * V_lt);
disp(I_ht,I_lt,'Under maximum load the currents on 345-kV and 34.5-kV side of the transformer respectively in A')
//CT ratio on the 34.5kV side 1000/5
I_r_lt = I_lt * 5 / 1000;disp(I_r_lt,'Current flowing through the differential relay from 34.5-kV side')
I_balance = 5;
I_lt_sec_ct = I_balance / sqrt(3);disp(I_lt_sec_ct,'To balance the above current each of the secondary windings of the delta connected CTs should have a current(in A) of')
ct_sec = I_ht / I_lt_sec_ct;disp(ct_sec,'CT ratios in secondary for the above currents')
I_ht_sec_ct = I_ht * 5 / 200;disp(I_ht_sec_ct,'CT secondary currents for ratio 200/5 on the secondary side of 345-kV will be')
I_line_ctr = I_ht_sec_ct * sqrt(3);disp(I_line_ctr,'Line currents from CTs to differential relays')
turns_ratio = I_r_lt / I_line_ctr;disp(turns_ratio,'Required turns ratio for the three auxillary CTs uses is')