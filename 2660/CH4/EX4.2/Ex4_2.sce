clc
// given
OS_RM = 20000 // opening stock of raw materials in Rs
CS_RM = 30000 // closing stock of raw materials in Rs
TP_RM = 170000 // total purchase in year in Rs
OS_FG = 10000 // opening stock of finished goods in Rs
CS_FG = 15000 // closing stock of finished goods in Rs
sales = 489500 // sales of finished goods in Rs
D_W = 120000 // direct wages in Rs
F_E1 = 120000 // factory expenses in Rs
NM_E = 50000 //  non-manufacturing expenses in Rs
DMC = OS_RM + TP_RM - CS_RM // direct material cost
FC = DMC + D_W + F_E1 // factory cost
TC = FC + NM_E // total cost
FG_S = OS_FG + TC - CS_FG // cost of finished goods sold in Rs
P = sales - FG_S // profit in Rs
F_E2 = (F_E1)/D_W*100 // factory expenses in percent
NM_C = (NM_E)/FC*100 // non-manufacturing expenses to factory cost
P_C = (P/FG_S)*100 // profit to cost of sales
dm = 20000 // direct material in Rs
dw = 30000 // direct wages in Rs
fe = dw // factory expenses
fc = dm+dw+fe // factory cost in Rs
nme = NM_C*fc/100 // non-manufacturing expenses in Rs
tc = fc+nme // total cost in Rs
p = (P_C*tc)/100 // profit in Rs
sp = tc+p // selling price in Rs
printf("\n Selling price = Rs %d" , sp) 
 
 
