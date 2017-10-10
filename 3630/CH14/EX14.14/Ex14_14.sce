clc;
hfe=150;
rC=4000;
hie=3000;
Cbe=0.000000000012
Cbc=0.000000000006;
Av=(hfe*rC)/hie;
CinM=Av*Cbc;
Rs=500;
Req=1000;
Rth=(Req*Rs)/(Req+Rs);
RX=(Rth*hie)/(Rth+hie);
f2B=1/(2*3.14*RX*(Cbe+CinM));
disp('kHz',f2B/1000,"f2B=")//The answers vary due to round off error
disp('The answers vary due to round off error', ," ")
