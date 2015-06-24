clc
v1 = 25 // cutting speed in m/min
t1 = 90 // tool life in min.
v2 = 35 // cutting speed in m/min
t2 = 20 // tool life in min
n = log(v2/v1)/log(t1/t2) // exponent
C = v1*(t1)^n // constant
t = 60 // tool life in min.
v = C/(t)^n // cutting speed in m/min.
printf("\n n = %0.3f\n C = %0.1f\n Cutting speed = %0.2f m/min." , n , C,v)
// 'Answers vary due to round off error'
