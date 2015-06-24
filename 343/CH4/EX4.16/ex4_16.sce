clc
x=1        //Assigning values to parameters
kva=40
pf=0.8
wi=450
wcf=850
n1=x*kva*pf*100/((x*kva*pf)+(wi*0.001)+(x*x*wcf*0.001))
x=sqrt(wi/wcf)
n2=x*kva*pf*100/((x*kva*pf)+(2*wi*0.001))
kva1=kva*sqrt(wi/wcf)
disp("Percent",n1,"Efficiency at full node 0.8pf is")
disp("Percent",n2,"Maximum Efficency is")
disp(kva1,"Load in KVA at which maximum occurs is")