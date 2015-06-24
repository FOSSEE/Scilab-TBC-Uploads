clear
clc
disp("example 9.6")
pp=235
pe=0.33
lf=1
teo=pp*8760*3600*10^6
ei=teo/pe
nfr=3.1*10^10//fessions required
tnfr=nfr*ei
t1gu=2.563*10^21 //total uranium atoms in 1 grm
fure=tnfr/t1gu
printf("total energy input %eWatt sec \n energy input is %eWatt-sec\n total number of fissions required is %efissions \n fuel required is %e grams %dkg",teo,ei,tnfr,fure,fure/1000)
