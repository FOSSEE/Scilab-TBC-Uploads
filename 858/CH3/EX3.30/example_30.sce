clc
clear 
printf("example 3.30 page number 118\n\n")

//to find the heat of combustion

delta_n = 10-12;  //mole per mole napthanlene

//basis 1g
moles_napthalene = (1/128);

disp('part 1')
Qv = 40.28   //in kJ
Qp = Qv-(delta_n*moles_napthalene*8.3144*298/1000);
printf("heat of combustion = %f kJ\n\n",Qp)

disp('part 2')
delta_H = 44.05   //in kJ/gmol
water_formed = 4/128;   //in g mol
Qp1 = Qp - (delta_H*water_formed);
printf("heat of combustion = %f kJ",Qp1)
