P1=0.3;//pressure of gas A in atm//
VA=50;//volume of gas A in ml//
V=500;//Volume of vessel in ml//
PA=P1*VA/V;//Pressure of gas A in vessel//
printf('Pressure of gas A in vessel=PA=%fatm',PA);
P2=0.4;//pressure of gas B in atm//
VB=250;//volume of gas B in ml//
PB=P2*VB/V;//Pressure of gas A in vessel//
printf('\nPressure of gas B in vessel=PB=%fatm',PB);
P=PA+PB;//Total pressure in vessel in atm//
printf('\nTotal pressure in vessel=P=%fatm',P);
