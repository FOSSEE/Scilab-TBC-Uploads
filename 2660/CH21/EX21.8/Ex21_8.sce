clc
n1 = 15 // total number of sub groups
// number of defectives
d1 = 77
d2 = 64
d3 = 75
d4 = 93
d5 = 45
d6 = 61
d7 = 49
d8 = 65
d9 = 45
d10 = 77
d11 = 59
d12 = 54
d13 = 84
d14 = 40
d15 = 92
d = d1+d2+d3+d4+d5+d6+d7+d8+d9+d10+d11+d12+d13+d14+d15 // total number of defectives
c1 = d/n1
ucl1 = c1 + 3*sqrt(c1)
lcl1 = c1 - 3*sqrt(c1)
// revised control limits
n2 = 12 // total number of sub groups
D = d - (d4+d14+d15) // number of defects
c2 = D/n2
ucl2 = c2 + 3*sqrt(c2)
lcl2 = c2 - 3*sqrt(c2)
printf("\n Preliminary control limits \n UCL = %0.2f \n LCL = %0.2f \n Revised control limits \n UCL = %0.3f \n LCL = %0.3f" , ucl1,lcl1,ucl2,lcl2)


