clc
e1=2000        //Assigning values to parameters
e2=200
r1=2.3
x1=4.2
r2=0.025
x2=0.04
kva=20
i1=kva*1000/e1
i2=kva*1000/e2
k=e2/e1
r01=r1+r2/(k*k)
x01=x1+x2/(k*k)
r02=r2+k*k*r1
x02=x2+k*k*x1
disp("ohms",r01,"The equivalent primary resistance is")
disp("ohms",x01,"The equivalent primary reactance is")
disp("ohms",r02,"The equivalent Secondary resistance is")
disp("ohms",x02,"The equivalent Secondary reactance is")