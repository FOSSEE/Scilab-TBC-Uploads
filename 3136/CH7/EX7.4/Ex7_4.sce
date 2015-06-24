clear all; clc;

disp("We have psia=lamda*psi=lambda*phi*(tanßm1-tanßm2) and R=0.5*φ(tanß1+tanß2) we can obtain the values of tanß1 and tanß2")
//let x=tanßm1-tanßm2
x=0.35/(0.92*0.5)
printf("\n tanßm1-tanßm2= %0.3f",x)

//let y=tanß1+tanß2
y=2*0.5/0.5
printf("\nThus tanß1+tanß2= %0.3f",y)

disp("Hence tanß1=1.38")
tanbeta1=1.38
beta_1=((atan(tanbeta1)))*180/%pi
printf("\nThus the value of ß1 is equal to %0.1f degrees",beta_1)

disp("tanß2=0.619")
tanbeta2=0.619
beta_2=((atan(tanbeta2)))*180/%pi
printf("\nThus the value of ß1 is equal to %0.1f degrees",beta_2)

disp("For each stage we have psi=Cp*deltaTos/((Um)^2)")
delta_T_os=0.35*(920^2)/6012
printf("\nHence deltaTos= %0.1f R",delta_T_os)

Cp=0.24*778*32.2
printf("\nWhere Cp = %0.0f ft-lbf/slug",Cp)

disp("For overall compressor form equation 47.4 we have (Poe/poi)=[(1+deltaToe/Toi)]^(k*eff*p/(k-1))")
delta_T_oe=530*[(4.5^(0.2857/0.9))-1]
printf("\nThus deltaToe= %0.0f R",delta_T_oe)

disp("The number of stages can be calculated as  ns=deltaToe/deltaTos")
delta_T_oe=324
delta_T_os=49.3
ns=delta_T_oe/delta_T_os
printf("\nThus ns= %0.2f",ns)
disp("ns is approximately equal to 7")

disp("Hence the actual values are: ")
delta_T_oe=7*49.3
printf("deltaToe= %0.1f R",delta_T_oe)

//let f=poe/po1
f=(1+(345.1/530))^(0.9*3.5)
printf("\n poe/po1= %0.2f",f)

disp("The adiabetic efficiency is given as ((poe/poi)^(((k-1)/k))-1/((Toe/Toi)-1)")
//let  k-1/k=d
d=0.2857
f=4.85

ETA_ad=((f^(d))-1)/((345.1/530))
printf("\nETAad= %0.4f",ETA_ad)
//let r=ETAd*100
r=ETA_ad*100
printf("\n Thus ETAad= %0.2f percent",r)













