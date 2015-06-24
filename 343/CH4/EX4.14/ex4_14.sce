clc
r1=2        //Assigning values to parameters
r2=0.02
wi=412
pf=0.8
x=1
kva=50
e1=2300
e2=230
i2=kva*1000/e2
i1=kva*1000/e1
wcf=(i1*i1*r1)+(i2*i2*r2)
n1=x*kva*pf*100/((x*kva*pf)+(wi*0.001)+(x*x*wcf*0.001))
x=0.5
n2=x*kva*pf*100/((x*kva*pf)+(wi*0.001)+(x*x*wcf*0.001))
disp("Percent",n1,"Efficiency at full node 0.8pf is")
disp("Percent",n2,"Efficiency at half full node 0.8pf is")