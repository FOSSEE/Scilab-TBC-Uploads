wCu=0.0230;//weight of Cu deposited in the coulometer in grams//
MW=63.54;//molecular weight of Cu in grams//
n=wCu*2/MW;//no. of equivalents of Cu deposited//
printf('In the coulometer,wt of Cu deposited=0.0230grams');
printf('\nNumber of equivalents of Cu deposited=n=%fequivalents or Farads.',n);
printf('\nThis would have resulted in deposition of 7.24*10^-4equivalents of Ag+ at the cathode \nand dissolution of the same amount at the anode.');
wAgNO3=7.39;
w1AgNO3=0.2360;//after electrolysis weight of AgNO3//
MWAgNO3=170;//molecular weight of AgNO3//
BEAgNO3=wAgNO3/MWAgNO3;
printf('\n Anolyte solution \nBefore electrolysis 1000grams of water contains %fequivalents of AgNO3',BEAgNO3);
AEAgNO3=w1AgNO3/MWAgNO3;
printf('\nAfter electrolysis 23.14grams of water contains %fequivalents of AgNO3.',AEAgNO3);
w=23.14;
BE=w*BEAgNO3/1000;
printf('\n23.14grams of water before electrolysis would have contained %fequivalents of AgNO3',BE);
IC=AEAgNO3-BE;
printf('\nIncrease in the concentration of anolyte=IC=%fequivalents.',IC);
printf('\n0.000382gram equivalents of NO3- ions must have migrated into the anode compartment.\nAs a result of passin 7.24*10^-4Farads into the solution.\n0.000724equivalents of Ag should have dissolved to give the same amount of Ag+ ion.\nOut of this 0.000382gram equivalents are present in the anolyte.');
ME=n-IC;//no of equivalents of migrated anodes//
printf('\n%fgram equivalents of Ag+ ions must have migrated from the anode.',ME);
tAg=ME/n;//transport number//
printf('\nTransport number of Ag=tAg=%f',tAg);
tSO3=1-tAg;
printf('\nTransport number of SO3=tSO3=%f',tSO3);
