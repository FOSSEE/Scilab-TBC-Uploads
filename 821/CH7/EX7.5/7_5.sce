wAg=1.424;//weight of Ag deposited in the coulometer in grams//
MW=108;//molecular weight of AgNO3 in grams//
w1=90.25;//weight of silver nitrate in grams//
w2=5.039;//weight of AgNO3 in grams//
w=w1-w2;
n=wAg/MW;
printf('No. of equivalents of Ag deposited in the silver coulometer=n=%f.',n);
printf('\nThis amount of Ag+ and NO3- ions would have discharged at the cathode and at the anode respectively.');
printf('\n Anolyte solution\nBefore electrolysis 85.21(90.25-5.039)grams of water contained 0.02965 equivalents of AgNO3 or Ag+.');
BEAg=0.007202;//no. of equivalents of Ag+ before electrolysis//
printf('\nAfter electrolysis 20.893-0.193 i.e 20.7grams of water contains 0.001136equivalents of AgNO3 or Ag+.');
AEAg=0.01136;//no. of equivalents of Ag+ after electrolysis//
printf('\n20.7grams of water,before electrolysis would have contained 0.007202 equivalents of Ag+.');
DC=BEAg-AEAg;//decrease in the conc. of anolyte//
printf('\nDecrease in the conc. of anolyte=DC=0.006066equivalents.');
tAg=n/DC;//transport number//
printf('\ntAg=ratio of Decrease in anolyte conc. and No. of gram equivalents deposited at either electrode=tAg=0.460100');

