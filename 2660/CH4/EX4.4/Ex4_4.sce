clc
sp = 65 // selling price in Rs
profit = 0.2*sp // profit in Rs
tc = sp - profit // total cost in Rs 
P = (sp - profit)/1.4 // production cost in Rs
DM = 15 // cost of direct material in Rs
W = (P - DM)/ 1.4 // direct labour cost in Rs
tt = W/2 // time taken in hours
printf("\n Time taken = %0.3f Hours" , tt )
// Answers vary due to round off error
