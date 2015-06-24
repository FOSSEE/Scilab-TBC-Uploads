clc
n = 20 // number of samples
A = 1.342
A1 = 1.596
A2 = 0.577
d2 = 2.326
d3 = 0.864
D1 = 0
D2 = 4.918
D3 = 0
D4 = 2.115
// number of defectives
x1 = 3290
x2 = 3180
x3 = 3350
x4 = 3470
x5 = 3080
x6 = 3240
x7 = 3260
x8 = 3310
x9 = 3640
x10 = 4110
x11 = 3220
x12 = 3590
x13 = 4270
x14 = 4040
x15 = 3580
x16 = 3500
x17 = 3570
x18 = 3560
x19 = 2740
x20 = 3200
r1 = 560
r2 = 410
r3 = 200
r4 = 300
r5 = 90
r6 = 650
r7 = 890
r8 = 410
r9 = 1120
r10 = 520
r11 = 580
r12 = 670
r13 = 480
r14 = 250
r15 = 170
r16 = 670
r17 = 440
r18 = 660
r19 = 560
r20 = 590
x = x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16+x17+x18+x19+x20
r = r1+r2+r3+r4+r5+r6+r7+r8+r9+r10+r11+r12+r13+r14+r15+r16+r17+r18+r19+r20
Xavg = x/n
Ravg = r/n
// for X chart
ucl1 = Xavg + A2*Ravg
lcl1 = Xavg - A2*Ravg
// for R chart
ucl2 = D4*Ravg
lcl2 = D3*Ravg
// Revised control limits
n1 = 15
n2 = 19
X = (x - (x5+x10+x13+x14+x19))/n1
R = (r - (r9))/n2
// for X chart
ucl3 = X + A2*R
lcl3 = X - A2*R
// for R chart
ucl4 = D4*R
lcl4 = D3*R
printf("\n Preliminary control limits \n  For X charts \n UCL = %0.2f \n LCL = %0.2f\n For R charts \n UCl = %0.3f \n LCL = %0.3f \n Revised control limits \n For X chart \n UCL = %0.3f \n LCL = %0.3f\n For R charts \n UCl = %0.3f \n LCL = %0.3f" , ucl1,lcl1,ucl2,lcl2,ucl3,ucl3,ucl4,lcl4)
//  'Answers vary due to round off error'


