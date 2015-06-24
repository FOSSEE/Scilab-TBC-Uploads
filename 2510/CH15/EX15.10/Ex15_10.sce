//Variable declaration:
MC = 2000.0     
mc = 1000.0
U = 2000.0
A = 10.0
T1 = 300.0
t1 = 60.0
e = %e

//Calculation:
B = 1.0/mc 
b = 1.0/MC
x = B/b
y = U*(B-b)
T2 = ((x-y)*T1 + x*(e-y)*t1)/(2*e-1)
t2 = t1+(T1-T2)/x

//Result:
printf("T2 = : %.0f ",T2)
printf("t2 = : %.0f ",t2)
