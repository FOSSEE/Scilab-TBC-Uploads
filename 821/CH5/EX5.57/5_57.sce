T0=373;//temperature in kelvin//
Kb=0.52;//value of Kb in deg per mol//
T1=373.208;//temperature in kelvin//
W2=3.40;//weight of BaCl2 in grams//
W1=100;//weight of water boils in grams//
dTb=T1-T0;//change in temperature//
Mobs=(Kb*1000*W2)/(dTb*W1);//Molecular weight of BaCl2 observed in grams//
printf('Molecular weight of BaCl2 observed=Mobs=%fgrams',Mobs);
Mthr=208.4;//Theoritical Molecular weight of BaCl2 in grams//
i=Mthr/Mobs;
a=0.5*(i-1);//apparent degree of dissociation of BaCl2//
printf('\nApparent degree of dissociation of BaCl2=a=%f',a);


