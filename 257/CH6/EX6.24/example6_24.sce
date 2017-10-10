s=%s

T1=1*3*6*1
T3=1*2*5*1
T2=1*4*7*1
T4=1*2*(1/(s+1))*1*6
T5=1*2*(1/(s+1))*(1/(s+1))*7*1
T6=1*3*(1/(s+1))*7*1

delta=1
del1=1
del2=1
del3=1
del4=1
del5=1
del6=1

TF=(T1*del1 + T2*del2 + T3*del3 + T4*del4 + T5*del5 + T6*del6)/delta
disp(TF,"Y/R = ")
