clc
clear
disp("example 4 6")
aec=201500 //annual energy consumption
lf=0.35//load factor constnt
t=4000//tariff
tmd=1200//tariff for maximum demand
t3=2.2
lfb=0.55 //load factor improved
ecd=0.25//energy consumption reduced
md=aec/(8760*lf)
yb=t+md*tmd+t3*aec
mdb=aec/(8760*lfb)
ybb=t+mdb*tmd+t3*aec
ne=aec*(1-ecd)
md3=ne/(8760*lf)
ybc=t+md3*tmd+t3*ne
aeca=yb/aec
aecb=ybb/aec
aecc=ybc/ne
disp('a')
printf("maximum demand %.2fkW \n yearly bill Rs.%d per year \n(b)\n maximum demand %.2fkW \n yearly bill Rs.%dper year",md,yb,mdb,ybb)
disp("c")
printf(" new energy %dkWh \n maximum demand %.2fkW \n yearly bill Rs.%dper year \n average energy cost in case a Rs%.4fper kWh \n average energy cost in case b Rs%.3fper kWh\n average energy cost in case c Rs%.3fper kWh ",ne,md3,ybc,aeca,aecb,aecc)