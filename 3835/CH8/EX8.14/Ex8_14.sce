clear
//
isc=150 //short circuit current
iscp=25/1.732 //isc per phase where 1.732 is the value of root 3
pv=415/1.732 //per phase voltage
ist=(iscp*pv)/150
ifl=(15*735.5)/((415*0.9*0.8*(3**0.5)))
ratio=ist/ifl
printf("\n ratio")
