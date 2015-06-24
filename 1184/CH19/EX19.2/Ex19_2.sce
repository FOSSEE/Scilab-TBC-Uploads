//Example 19-2,Page No - 767

clear
clc

B_rating_Mhzkm =600*10^6
len_ft=500

bandwidth = B_rating_Mhzkm/(len_ft/3274)

printf('The bandwidth of the 500 feetr segment of the ccable is %.1f Mhz',bandwidth/10^6)
