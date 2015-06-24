clc
v1 = 18 // cutting speed in m/min
t1 = 3 // tool life in hours
n = 0.125 // exponent
c = v1*(t1*60)^n // constant
v2 = 24 // cutting speed in m/min
t = (c/v2)^(1/0.125) // tool life in min.
printf("Tool life = %d min." , t)
