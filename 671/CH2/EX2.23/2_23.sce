//convert current source to voltage source
V=3.5*20

//KVL
I=100/(10+20+V)
Voc=100-10*I

//Finding Isc
I=100/10
Isc=(1+3.5)*I

Ro=Voc/Isc

disp(Ro,Voc)