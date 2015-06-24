clear
clc
kag_a=0.72;
kal_a=144;
HA=1000;
Fg=9000;//mol/hr
fl=0.9;b=1;
Vr=1.62;//m3
DA=3.6*10^-6;//m2/hr
a=100;//m2/m3
k=2.6*10^5;//m3/mol.hr
DB=DA;
P=10^5;PA=1000;//Pa
kal=kal_a/a;
//At the start
CBo=555.6;
Mh=(sqrt(DB*k*CBo))/kal;
//Min value of EAi
Ei=1+(CBo*HA/PA);
if Ei>Mh
    E=Mh;
end
rA1=PA/((P*Vr/Fg)+(1/kag_a)+(HA/(kal_a*E))+(HA/(k*fl*CBo)));
//At the end
CBf=55.6;
Mh=(sqrt(DB*k*CBf))/kal;
//Min value of EAi
Ei=1+(CBf*HA/PA);
if Ei>Mh
    E=Mh;
end
rA2=PA/((P*Vr/Fg)+(1/kag_a)+(HA/(kal_a*E))+(HA/(k*fl*CBf)));
//Average rate of reaction
rA_avg=(rA1+rA2)/2;
t=(fl/b)*integrate('1/rA_avg','CB',CBf,CBo);
printf("\n Part a")
printf("\n The run time needed is %f",t)
printf("hr")
//The min time required is
tmin=Vr*(CBo-CBf)/(Fg*(PA/(P-PA)));
printf("\n The minimum time required is %f",tmin)
printf("hr")
//Fraction of reactant which passes through the tank unreacted is
f=(t-tmin)/tmin;
printf("\n Part b")
printf("\n Fraction of reactant which passes through the tank unreacted is %f",f)
