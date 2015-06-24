//Example 13-3, Page No - 492

clear
clc

len = 165
attn_100ft = 5.3
pin = 100
attn_ft = 5.3/100

total_attn = attn_ft * len
pout = pin *0.1335

printf('The total attenuation of the cable is %.3f dB',total_attn)
printf('\n Output power is %.2f W',pout)
