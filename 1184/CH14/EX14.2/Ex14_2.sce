//Example 14-2,page No - 553

clear
clc

gain=14
len=250
attn_100=3.6
f =220*10
pin =50
p =0.126

pout =pin*p
line_loss =pin-pout
pwr_ratio = 25.1
ERP = pwr_ratio*pout
printf('The transmission line loss is %.2f',line_loss)
printf('\n\nEffective raduated power is %.1f W',ERP)

