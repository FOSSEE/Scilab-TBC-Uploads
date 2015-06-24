clc
d_m = 5500 // cost of direct material in Rs
d_l = 3000 // manufacturing wages in Rs
// factory overhead is 100% 0f manufacturing wages
f_o = (100*d_l)/100 // factory overheads in Rs
FC = d_m + d_l + f_o // factory cost in Rs
nm_o = 15*FC/100 // non-manufacturing overheads in Rs
tc = FC+nm_o // total cost in Rs
p = 12*tc/100 // profit in Rs
sp = tc+p // selling price in Rs
printf("\n Total cost = Rs %d\n Selling price = Rs %d" , tc,sp)
