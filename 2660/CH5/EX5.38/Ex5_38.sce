clc
as = 80000 // annual sales in Rs
vc = 64000 // variable expenses in Rs
c = 16000 // contribution in Rs
fc = 24000 // fixed expenses in Rs
l = 8000 // losses in Rs
p = 9000 // profit in Rs
s1 = fc + vc // sales at B.E.P in Rs
s2 = (fc + vc + p)/0.945 // sales at net income of Rs9000 and corporate tax rate being 5.5%
q = 10000 // quantity of units
sp = (fc+vc)/q // selling price per unit in Rs
printf("\n Sales at break even point = %d units" , s1 )
printf("\n Sales at net income of Rs9000 and corporate tax rate being 5.5 = Rs %0.2f\n Sales per unit if B.E.P brought down to 10000 units = Rs %0.2f per unit" ,s2 , sp)
