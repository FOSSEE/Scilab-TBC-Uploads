//Example 12-2, Page No - 474

clear
clc

block = 1500
ethernet = 10*10^6
token_ring = 16*10^6

t1_bit = 1/ethernet
t1_byte = 8*t1_bit
t1_1526 = 1526 *t1_byte
t2_bit = 1/token_ring
t2_byte = 8 * t2_bit
t2_1521 =1521*t2_byte

printf('Time required for the ethernet with the speed of 10Mbps is %.3f ns',t1_1526*10^6)
printf('\n Time required for the token ring format with the speed of 16 Mbps is %.3f ns',t2_1521*10^6)

