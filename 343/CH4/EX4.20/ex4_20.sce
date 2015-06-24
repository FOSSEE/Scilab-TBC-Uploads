clc
nm=98        //Assigning values to parameters
x=0.5
kva=200
pf=1
wi=1000*((x*kva*pf*100/nm)/2-(x*kva*pf)/2)
wcu=wi
wcf=wcu/(0.5*0.5)
n1=x*kva*pf*100/((x*kva*pf)+(wi*0.001)+(x*x*wcf*0.001))
x=0.75
n2=x*kva*pf*100/((x*kva*pf)+(wi*0.001)+(x*x*wcf*0.001))
disp("Watts",wi,"The core loss is");
disp(n1,"Efficiency at full node 0.8pf is")
disp(n2,"Efficiency at 75% full node 0.8pf is")