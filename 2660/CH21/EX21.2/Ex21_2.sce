clc
clf()
n = 100 // total number of sub groups
s = 10 // number of samples
// number of defectives
d1 = 3
d2 = 2
d3 = 3
d4 = 5
d5 = 3
d6 = 3
d7 = 2
d8 = 4
d9 = 3
d10 = 2
d = d1+d2+d3+d4+d5+d6+d7+d8+d9+d10 // total number of defectives
p1 = d/(n*s) // average fraction of defectives
sigmap1 = sqrt(p1*(1-p1)/n)
ucl1 = p1 + 3*sigmap1
lcl1 = p1 - 3*sigmap1
// control chart for fraction defectives
x = linspace(0,10,10)
y = linspace(0,0.081,10)
plot(x,y)
xtitle("Control chart for fraction defectives" , "Samples" ,"Fraction defectives")
// percent defective (mean)
p1 = p1*100
sigmap2 = sqrt(p1*(100-p1)/n)
ucl2 = p1 + 3*sigmap2
lcl2 = p1 - 3*sigmap2
printf("\n Control limits \n Fraction defectives \n UCL = %0.3f\n LCL = %0.4f\n Percent defectives \n UCL = %0.1f \n LCL = %0.1f", ucl1,lcl1,ucl2,lcl2)
// control chart for percent defect
xset("window" ,1)
z = linspace(0,8.1,10)
plot(x,z)
xtitle("Control chart for percent defects" , "Sample no." , "percent defects")
//  'Answers vary due to round off error'
