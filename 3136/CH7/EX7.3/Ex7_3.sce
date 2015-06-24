clear all; clc;

disp("From the previous numerical wee have ßm1=αm2=54.5 degrees, tanßm1=1.405")
disp("ßm2=αm1=42.6 degrees. Thus tanßm2=0.92")

disp("tanßm1-tanßm2=1.55(1+1.5*(s/c)),thus we can determine s/c")
//let x= s/c
x=[1.55/(1.405-0.92)-1]/1.5
printf("Thus (s/c)= %0.2f",x)

disp("Also b/c=3,we have c=(rt-rh)/3")
rt=24
rh=15
c=(rt-rh)/3
printf("\n c= %0.0f in",c)

s=1.47*c
printf("\n Hence we determine s to be equal to %0.1f in",s)

rm=20
Zb=2*%pi*rm/s
printf("\n Zb= %0.0f",Zb)

disp("The blade angles can be estimated from ßb1=ßm1-i and ßb2=ßm2-δ")
disp("Where i=3 degrees and δ=m*Θ*((s/c)^0.5)")

//let n=a/c
n=0.5
disp("m=0.23*((2*(a/c))^2)+0.1*(ßm2/50)")
disp("Θ=ßm1-ßm2")
thita=11.9
m=0.23+(0.1*42.6/50)//for circular blade
printf("\n m= %0.3f",m)
m=0.315
x=1.47
delta=m*thita*(x^0.5)
printf("\n δ= %0.1f degrees",delta)

beta_b1=54.5-3
printf("\n ßb1= %0.1f degrees",beta_b1)

beta_b2=42.6-4.5
printf("\n ßb2= %0.1f degrees",beta_b2)

