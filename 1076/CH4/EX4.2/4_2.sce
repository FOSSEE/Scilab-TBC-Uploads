clear
clc

c1=.15
c2=.05
V=100

A=[
1+c1 -(1+c2) -c2
c1 1+c1 -(1+c2)
1 0 0
]

B=[0 0 1]'
Vm=inv(A) * B
Vm = round(Vm*1e4)/1e4
V1=V/(Vm(1)+Vm(2)+Vm(3))
V2=Vm(2) * V1
V3=Vm(3) * V1

ef=V/(3*V3)

mprintf("Voltage distribution in percentage of total voltage:\nV1=%.2f\tV2=%.2f\tV3=%.2f\nstring efficiency=%.1f percent",V1, V2, V3,ef*100)
