clc
clf()
n = 10 // number of samples
A2 = 0.577
D3 = 0
D4 = 2.115
// number of defectives
x1 = 11.274
x2 = 11.246
x3 = 11.204
x4 = 11.294
x5 = 11.252
x6 = 11.238
x7 = 11.230
x8 = 11.276
x9 = 11.208
x10 = 11.266
r1 = 0.15
r2 = 0.20
r3 = 0.33
r4 = 0.46
r5 = 0.10
r6 = 0.15
r7 = 0.20
r8 = 0.23
r9 = 0.50
r10 = 0.30
x = x1+x2+x3+x4+x5+x6+x7+x8+x9+x10
r = r1+r2+r3+r4+r5+r6+r7+r8+r9+r10
Xavg = x/n
Ravg = r/n
// for X chart
ucl1 = Xavg + A2*Ravg
lcl1 = Xavg - A2*Ravg
// for R chart
ucl2 = D4*Ravg
lcl2 = D3*Ravg
printf("\n control limits \n  For X charts \n UCL = %0.2f cm \n LCL = %0.2f cm\n For R charts \n UCl = %0.3f \n LCL = %0.3f" , ucl1,lcl1,ucl2,lcl2)
// X chart
x=[1,2,3,4,5,6,7,8,9,10];
y=[11.274,11.246,11.204,11.294,11.252,11.238,11.230,11.276,11.208,11.266]
plot(x,y)
xtitle("X chart","Sample No.","X")
// R chart
xset("window",1)
z = [0.15,0.20,0.33,0.46,0.10,0.15,0.20,0.23,0.50,0.30]
plot(x,z)
xtitle("R chart" ,"Sample no.", "R")


