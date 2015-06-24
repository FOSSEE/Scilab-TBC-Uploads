T=310;//temperature in kelvin//
R=0.0821;//universal gas constant//
OP=7.65;//Osmatic pressure in atm//
c=OP/(R*T);
printf('Concentration of glucose=c=%fM',c);
W=c*180;//weight in one litre in grams//
printf('\nWeight in one litre=W=%fgrams',W);
