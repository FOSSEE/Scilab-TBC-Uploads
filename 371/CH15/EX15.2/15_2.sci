//The ac Motor Control//
//Example 15.2//
Imr=50;//motor field rating in amp//
Icr=1.5*Imr;//converter rated current in amp//
printf('value of converter rated current=Icr=%famp',Icr);
Vdc=100;//converter dc rating in volts//
Vac=Vdc/1.35;//converter ac rating voltage required//
printf('\nvalue of converter rated ac voltage=Vac=%fvolts',Vac);
Pkva=(1.05*100*75)/1000;//KVA rating of the transformer//
printf('\nKVA rating of transformer=Pkva=%fKVA',Pkva);