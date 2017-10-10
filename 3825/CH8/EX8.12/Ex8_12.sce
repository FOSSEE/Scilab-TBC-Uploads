clc
hsf=334.92
T1=273.15
T2=263.15
CPf=4.186
CPs=2.093
a=(hsf/T1)+((CPf-CPs)*log(T2/T1))
mprintf("(hsf/T)2=%f\n",a)//ans vary due to roundoff error
deltas=-a
mprintf("deltas=%fkJ/kg K",deltas)//ans vary due to roundoff error

