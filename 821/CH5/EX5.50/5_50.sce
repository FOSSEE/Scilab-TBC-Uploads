T0=373;//temperature in kelvin//
R=1.99;//value of R in cal per deg per mol//
lv=540;//Latent heat of vaporization in cal per grams//
Kb=(R*T0^2)/(1000*lv);//value of Kb in deg per mol//
printf('Value of Kb=%fKbdeg per mol',Kb);
T1=373.57;//temperature in kelvin//
W2=5;//weight of urea in grams//
W1=75;//weight of water boils in grams//
dT=T1-T0;//change in temperature//
M2=(Kb*1000*W2)/(dT*W1);//Molecular weight of urea in grams//
printf('\nMolecular weight of urea=M2=%fgrams',M2);
