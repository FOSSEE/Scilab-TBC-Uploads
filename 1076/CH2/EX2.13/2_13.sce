clear

clc;

r=.9e-2;
d=6;
D1=6;
D2=7;

Daa=sqrt ((d*d)+(D1*D1));
Daa=round(Daa*1e3)/1e3
Dbb=D2;
Dcc=Daa;
Deq=5.074;

Dsc_a = round(sqrt(r*Daa)*1e4)/1e4;
Dsc_b = round(sqrt(r*Dbb)*1e4)/1e4;
Dsc_c = round(sqrt(r*Dcc)*1e4)/1e4;

Dsc=(Dsc_a*Dsc_b*Dsc_c)^(1/3);
Cn=.02412/log10(Deq/Dsc);

mprintf("Capacitance per conductor per km = %f e-6 F/conductor/km\n",Cn);
