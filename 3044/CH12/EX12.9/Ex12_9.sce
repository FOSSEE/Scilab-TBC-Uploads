// Variable declaration
x1 = [0.5,0.55,0.6,0.35]
y1 = [1.0,1.2,0.8,1.4]
x2 = [0.75,1.65,1.0,1.1]
y2 = [0.75,0.6,0.55,0.5]
x3 = [0.6,0.9,0.8,0.7]
y3 = [1.0,0.7,0.8,0.9]
alpha = 0.05

// Calculation
x1_sum = sum(x1)
y1_sum = sum(y1)
x2_sum = sum(x2)
y2_sum = sum(y2)
x3_sum = sum(x3)
y3_sum = sum(y3)
x_sum = x1_sum+x2_sum+x3_sum 
y_sum = y1_sum+y2_sum+y3_sum

c1 = (x_sum^2)/12
c2 = (y_sum^2)/12
c3 = (x_sum*y_sum)/12

f_thr = 4.46

SST1 = 0
for i = 1:4
    SST1 = SST1 + x1(i)^2 + x2(i)^2 + x3(i)^2
end
    
SST1 = SST1 - c1

SSTR1 = (x1_sum^2 + x2_sum^2 + x3_sum^2)/4 - c1
SSE1 = SST1 - SSTR1


SST2 = 0
for i = 1:4
    SST2 = SST2 + y1(i)^2 + y2(i)^2 + y3(i)^2
end
    
SST2 = SST2 - c2

SSTR2 = (y1_sum^2 + y2_sum^2 + y3_sum^2)/4 - c2
SSE2 = SST2 - SSTR2

SPT = 0
for i = 1:4
    SPT = SPT + x1(i)*y1(i) + x2(i)*y2(i) + x3(i)*y3(i)
end
    
SPT = SPT - c3

SPTR = (x1_sum*y1_sum + x2_sum*y2_sum + x3_sum*y3_sum)/4 - c3
SPE = SPT - SPTR

SST = SST2 - SPT^2/SST1
SSE = SSE2 - SPE^2/SSE1
SSTR = SST - SSE

Mean_Sqaure_Treamtment = 0.035
Mean_Sqaure_Error = 0.029

f_prt = Mean_Sqaure_Treamtment / Mean_Sqaure_Error

// Result
printf ( "SST: %.2f",SST)
printf ( "SSE: %.2f",SSE)
printf ( "SSTR: %.2f",SSTR)

printf ( "F- Practical: %.2f",f_prt)
printf ( "f_prt < f_thr , Null hypothesis can not be rejected")
printf ( "One can not conclude that any of the cleaning agents is more effective than the others")
