clc
wi=1000                //Assigning values to parameters
kva=50
e1=2200
ifl=kva*1000/e1
x=1
pf=0.8
wcf=(ifl/20)*(ifl/20)*500
n1=x*kva*pf*100/((x*kva*pf)+(wi*0.001)+(x*x*wcf*0.001))
x=sqrt(wi/wcf)
n2=x*kva*pf*100/((x*kva*pf)+(2*wi*0.001))
disp(n1,"Efficiency at full node 0.8pf is")
disp(n2,"Maximum Efficency is")
disp(x,"Load  at which maximum occurs is")