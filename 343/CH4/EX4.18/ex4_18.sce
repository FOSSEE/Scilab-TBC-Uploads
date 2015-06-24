clc
x=1        //Assigning values to parameters
kva=20
pf=0.8
wi=450
wcf=900
n1=x*kva*pf*100/((x*kva*pf)+(wi*0.001)+(x*x*wcf*0.001))
x=sqrt(wi/wcf)
n2=x*kva*pf*100/((x*kva*pf)+(2*wi*0.001))
disp("Percent',n1,"Efficiency at full node 0.8pf is")
disp("Percent",n2,"Maximum Efficency is")
disp(x,"Load  at which maximum occurs is")