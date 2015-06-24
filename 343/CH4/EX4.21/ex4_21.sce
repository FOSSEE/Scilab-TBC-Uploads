clc
r1=0.3        //Assigning values to parameters
r2=0.01
x1=1.1
x2=0.035
kva=100
v1=2200
e1=v1
n1=400
n2=80
k=n2/n1
r01=r1+r2/(k*k)
x01=x1+x2/(k*k)
z01=sqrt(r01*r01+x01*x01)
e2=k*e1
i2=kva*1000/e2
r02=k*k*r01
x02=k*k*x01
pr1=(i2*r02*cosd(t)-i2*x02*sind(t))*100/e2
v2=e2-(e2*pr1/100)
disp("ohms",z01,"The equivalent primary resistance is")
disp(pr1,"The percentage voltage regulation at full load 0.8 pf leading is");
disp("Volts",v2,"The secondary terminal voltage is")
