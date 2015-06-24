clc
td1= 20 // total number of days
n1 = 200 // sample size 
// number of defectives
d1 = 10 
d2 = 15
d3 = 10
d4 = 12
d5 = 11
d6 = 9
d7 = 22
d8 = 4
d9 = 12
d10 = 24
d11 = 21
d12 = 15
d13 = 8
d14 = 14
d15 = 4
d16 = 10
d17 = 11
d18 = 11
d19 = 26 
d20 = 13
d = d1+d2+d3+d4+d5+d6+d7+d8+d9+d10+d11+d12+d13+d14+d15+d16+d17+d18+d19+d20 // total number of defectives
p1 = d/(n1*td1) // average fraction of defectives
sigmap1 = sqrt(p1*(1-p1)/n1)
ucl1 = p1 + 3*sigmap1
lcl1 = p1 - 3*sigmap1
// revised control limits
td2 = 18 // total number of days
D = d - (d10+d19) // number of defects
p2 = D/(n1*td2)
sigmap2 = sqrt(p2*(1-p2)/n1)
ucl2 = p2 + 3*sigmap2
lcl2 = p2 - 3*sigmap2
printf("\n Preliminary control limits \n UCL = %0.3f \n LCL = %0.3f \n Revised control limits \n UCL = %0.3f \n LCL = %0.3f" , ucl1,lcl1,ucl2,lcl2)

