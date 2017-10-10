clc
h1=137.77
v1=0.0010052
P1=0.005 //presurre in MPa
P2=3 //pressure in MPa
WP=v1*(P2-P1)*10^6
mprintf("WP=%fkJ/kg\n",WP/1000)//ans vary due to roundoff error
EtaP=0.8
h2apostrophe=h1+((WP/1000)/EtaP)
mprintf("h2apostrophe=%fkJ/kg\n",h2apostrophe)//ans vary due to roundoff error
h4=2995.1
s4=6.5422
q1=h4-h2apostrophe
mprintf("q1=%fkJ/kg\n",q1)//ans vary due to roundoff error
s5=s4
sf=0.4763
hf=137.77
sg=8.396
hg=2561.6
X5=(s5-sf)/(sg-sf)
mprintf("X5=%f\n",X5)//ans vary due to roundoff error
h5=(X5*hg)+(1-X5)*hf
mprintf("h5=%fkJ/kg\n",h5)//ans vary due to roundoff error
EtaT=0.85
deltaH=EtaT*(h4-h5)
mprintf("h4-h5=%fkJ/kg\n",deltaH)//ans vary due to roundoff error
Eta=(deltaH-(h2apostrophe-h1))/(h4-h2apostrophe)
mprintf("Eta=%f\n",Eta)//ans vary due to roundoff error
Pout=deltaH-(h2apostrophe-h1)
mprintf("Power output per kg of steam=%fkJ\n",Pout)//ans vary due to roundoff error
mprintf("Steam production rate for 1 MW power output=%fkg/s\n",(10^3)/Pout)//ans vary due to roundoff error
mprintf("Thermal efficinecy of Rankine cycle=%f",(h4-h5-(WP/1000))/(h4-h2apostrophe))//ans vary due to roundoff error

 
 



