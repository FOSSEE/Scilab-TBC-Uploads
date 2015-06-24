//chapter6,Example6_11,pg 124

ni=2.5*10^13

e=1.6*10^-19

un=3900

up=1900

sigin=ni*e*(un+up)//intrinsic conductivity

//1 donor atom/10^8 Ge atom dropped

rhoGe=4.42*10^22//no. of Ge atom/cc

Nd=rhoGe/10^8

sigex=Nd*e*un//extrinsic conductivity

printf("extrinsic conductivity\n")

printf("sigex=%.4f ohm cm",sigex)