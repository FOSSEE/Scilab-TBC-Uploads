// total power P consumed is 3300Kwh
 
// base monthly charge BMH is 12$
 
//First 100 kWh @ $0.16/kWh = $16.00 ; Next 200 kWh @ $0.10/kWh = $20.00; Remaining 100 kWh @ $0.06/kWh = $6.00
 
charge=16+12+20+6;

disp(charge) 
units='Coulombs C'
Q=[string(charge) units];
disp(Q)
// in coulombs C
 
 
// total charge is 54$
 
// avg cost AC is
 
AC=charge/(100+200+100);

disp(AC)
units='Cents/KWH'
AC=[string(AC) units];
disp(AC)

 
//13.5 cents/KWH
 

