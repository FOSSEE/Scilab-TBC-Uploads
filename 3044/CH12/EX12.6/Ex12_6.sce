
// Calculation
l = [45  43  51 ; 47  46  52 ; 48  50  55 ; 42  37  49]
a = l(: ,1)
b = l(: ,2)
c = l(: ,3)

l1 = [a(1) b(1) c(1)]
l2 = [a(2) b(2) c(2)]
l3 = [a(3) b(3) c(3)]
l4 = [a(4) b(4) c(4)]

// null hypothesis if all alpha =0 and all beta =0 else Alterrnative hypothesis 
alpha = 0.01              // level of significance
f_thr = 9.78              // theoritical f_value at 0.01 and (3 6) degrees of freedom
row = 4
column = 3

C = (sum(l1)+sum(l2)+sum(l3))^2 / 12.0
sst = sum((l1).^2) + sum((l2.^2)) + sum((l3.^2)) - C 
sstr =   ((sum(l1))^2 + (sum(l2))^2 + (sum(l3))^2 + (sum(l4))^2)/3.0 - C   
ssbl = ((sum(a))^2 + (sum(b))^2 + (sum(c))^2)/4.0  - C
SSE = sst - sstr

f_prt = 11.6              // calculated f_value

// Result
printf ( "f_thr < f_prt   we conclude that there are differences in the effectiveness of the 4 detergents" )
