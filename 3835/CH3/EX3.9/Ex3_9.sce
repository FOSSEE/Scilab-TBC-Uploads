clear
//
//given
B=0.8 //Wb/m**2
A=25*10**-4 //m**2
flux=20*10**-4 //Wb
l=3.14*40*10**-2 //m
f=2000*3.14 //AT
n=800 //number of turns
//case a
i=f/n  //A exciting current
printf("\n i= %0.3f  A",i)
l=(n*flux)/i   //self inductance in H
printf("\n l= %0.5f  H",l)
//case b
fluxa=20*10**-4  //Wb
gap=1*10**-2
u1=4*3.14*10**-7
rair=gap/(u1*A) //reluctance of air in AT/Wb
printf("\n rair= %0.5f  AT/Wb",rair)
fair=rair*flux  //mmf for air gap in AT
printf("\n fair= %0.5f  AT",fair)
fcore=6233.18 //AT--> 5000*((0.4*3.14)-0.01)=6233.18
totmmf=fcore+fair
printf("\n total mmf= %0.5f  AT",totmmf)
I=totmmf/n //A exciting current
//self inductance
L=(n*flux)/I
printf("\n L= %0.5f  H",L)
