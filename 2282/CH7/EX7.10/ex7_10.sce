// Example 7.10, page no-279
clear
clc

ea=80     //EIRP value of earth station A in dBW
eb=75     //EIRP value of earth station B in dBW
g=50     //transmit antenna gain in dB
gra=20     //receiver antenna gain for earth station A in dB
grb=15     //receiver antenna gain for earth station B in dB
theeta=4 //viewing angle of the sattelite from two earth station
eirp_d=eb-g+32-25*log10(theeta)
c_by_i=ea-eirp_d+(gra-grb)
printf("carrier-to-interference ratio at the satellite due to\n inteference caused by Eart station B is, (C/I) = %.0f dB ",c_by_i)
