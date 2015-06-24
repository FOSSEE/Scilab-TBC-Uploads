clc
x=1            //Assigning values to parameters
kva=25
pf=0.8
wi=0.35
wcf=0.4
n1=x*kva*pf*100/((x*kva*pf)+(wi*0.001)+(x*x*wcf*0.001))
kva1=kva*(sqrt(wi/wcf))
nm=kva1*pf*100/((kva1*pf)+2*wi)
disp(kva1,"Load in KVA  is")
disp("Percent",nm,"Maximum Efficency is")