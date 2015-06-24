clc
clear
//Input data
N=350//Speed in r.p.m
L=60//Net brake load in kg
mep=2.75//Mean effective pressure in kg/cm^2
oc=4.25//Oil consumption in kg/hour
jcw=490//Jacket cooling water in kg/hour
Tw=[20+273,45+273]//Temperature of jacket water at inlet and outlet in K
au=31.5//Air used per kg of oil in kg
Ta=20+273//Temperature of air in the test room in K
Te=390+273//Temperature of exhaust gases in K
d=22//Cylinder diameter in cm
l=28//Stroke in cm
bd=1//Effective brake diameter in m
CV=10500//Calorific value of oil in kcal/kg
pH2=15//Proportion of hydrogen in fuel oil in percent
C=0.24//Mean specific heat of dry exhaust gases
Cs=9.5//Specific heat of steam in kJ/kg.K

//Calculations
ibp=(mep*(l/100)*(3.14/4)*d^2*N)/4500//Indicated brake power in h.p
bhp=(L*3.14*N*bd)/4500//Brake horse power in h.p
qs=(oc*CV)/60//Heat supplied per minute in kcal
qbhp=(bhp*4500)/427//Heat equivalent of B.H.P in kcal/min
pqbhp=(qbhp/qs)*100//Percenatge of  heat
ql=(jcw/60)*(Tw(2)-Tw(1))//Heat lost to cooling water in kcal/min
pql=(ql/qs)*100//Percenatge of  heat
wH2O=(9*(pH2/100)*(oc/60))//Weight of H2O produced per kg of fuel burnt in kg/min
twe=(oc*(au+1))/60//Total weight of wet exhaust gases per minute in kg
twd=(twe-wH2O)//Weight of dry exhaust gases per minute in kg
qle=(twd*C*(Te-Ta))//Heat lost to dry exhaust gases/min in kcal
pqle=(qle/qs)*100//Percenatge of  heat
qx=(100+538.9+0.5*(Te-373))//Heat in kcal/kg
qst=(wH2O*qx)//Heat to steam in kcal/min
pqst=(qst/qs)*100//Percenatge of  heat
qra=(qs-(qbhp+ql+qle+qst))//Heat lost by radiation in kcal/min
pqra=(qra/qs)*100//Percenatge of  heat

//Output
printf('         HEAT BALANCE SHEET\n          ------------------ \n\n Heat supplied per minute is        %3.0f kcal/min  100 percent \n\n Heat expenditure              (kcal per minute)      (percent) \n 1.Heat equivalent of B.H.P is              %3.1f      %3.1f \n 2.Heat lost to cooling water is            %3.0f        %3.1f \n 3.Heat lost to dry exhaust gases is        %3.1f      %3.1f\n 4.Heat lost of steam in exhaust gases is  %3.0f         %3.1f\n 5.Heat lost by radiation, etc., is         %3.0f        %3.1f \n                                           ------------------\n        Total                               %3.0f        %3.0f \n                                           ------------------',qs,qbhp,pqbhp,ql,pql,qle,pqle,qst,pqst,qra,pqra,qs,(pqbhp+pql+pqle+pqst+pqra))
