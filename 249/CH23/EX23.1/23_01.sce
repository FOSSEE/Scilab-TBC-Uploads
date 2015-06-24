clear
clc
k=10^6;
Kag_a=0.01;fl=0.98;
Kal=1;
HA=10^5;
DAl=10^-6;
DBl=DAl;
PA=5*10^3;//Pa
CB=100;//mol/m3
b=2;
a=20;//m2/m3
Mh=sqrt(DAl*k*CB*CB)/Kal;
Ei=1+(DBl*CB*HA/(b*DAl*PA));
E=100;
printf("\n Part a")
res_total=(((1/(Kag_a))+(HA/(Kal*a*E))+(HA/(k*CB*CB*fl))));//Total Resistance
f_gas=(1/(Kag_a))/res_total;//fraction of resistance in gas film
f_liq=(HA/(Kal*a*E))/res_total;//fraction of resistance in liquid film
printf("\n Fraction of the resistance in the gas film is %f",f_gas)
printf("\n Fraction of the resistance in the liquid film is %f",f_liq)
printf("\n Part b")
printf("\n The reaction zone is in the liquid film")
printf("\n Part c")
if Ei>5*Mh
     printf("\n We have pseudo 1st order reaction in the film")
end
//From fig 23.4

rA=PA/(((1/(Kag_a))+(HA/(Kal*a*E))+(HA/(k*CB*CB*fl))));
printf("\n Part d")
printf("\n The rate of reaction(mol/m3.hr) is %f",rA)