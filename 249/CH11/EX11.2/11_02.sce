clear
clc
M=150;//Molecular mass(gm)
v=5;//litre/sec
v=5*60;//litre/min
V=860;//litres
//From Material Balance
Area1=M/v;//gm.min/litre
//From the tracer curve
A1=0.375;
Area2=A1*(1+1/4+1/16+1/64+1/256+1/1024+1/4096);//Taking Significant Areas
printf("\n From material balance Area(gm.min/litre) is %f",Area1)
printf("\n From Tracer Curve Area(gm.min/litre) is %f",Area2)
printf("\n Part a")
printf("\n As the two areas are equal,this is a properly done experiment \n")
//For the liquid,calculating t
sum1=0;
for i=1:10
    sum1=sum1+2*i*A1/(4^(i-1));
    t=sum1/Area1;
end
//liquid volume in vessel
Vl=t*v;
//Fraction of liquid
f=Vl/V;
printf("\n Part b")
printf("\n Fraction of liquid is %f",f)
//E=Cpulse/M/v
printf("\n Part c")
printf("\n The E curve is 1.5C")
printf("\n Part d")
printf("\n The vessel has  a strong recirculation of liquid,probably induced by the rising bubbles")

