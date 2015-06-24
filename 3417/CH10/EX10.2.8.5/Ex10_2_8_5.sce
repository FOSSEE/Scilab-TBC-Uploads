//Ex10.2.8.5;heat transfer rate would be involved under these circumstances

del_G_at25degree_celcius=-195500;//unit=cal/gm mole
del_H_at25degree_celcius=-212800;//unit=cal/gm mole
F=(96500/4.184);//since F=96500 coulombs/gm-mole
n=8
E_at25degree_celcius=-del_G_at25degree_celcius/(n*F);//Joules/coulomb
printf(" E_at25degree_celcius=%f volts=1.060 volts",E_at25degree_celcius);
//Max. efficiency  nmax=del_Wmax/-(del_H)at25 degree celcuis = -(del_G)T/(-del_H)25
nmax=del_G_at25degree_celcius/del_H_at25degree_celcius;
printf("\n nmax=%f",nmax);
//voltage efficiency nv=on load voltage/open circuit voltage=Operating voltage/Theoretical voltage
Theoretical_voltage=1.060/0.92;
printf("\n Theoretical_voltage=%f volts",Theoretical_voltage);
//power developed=100 kW=100*10^3 W
power_developed=(100*10^3)*0.86;//unit=kcal/hr; since 1 watt=1 joule/sec=0.86 kcal/hr
printf("\n power_developed=%f kcal/hr",power_developed);
del_G=-195500;
//Required flow rate of Methane
R_F_R_O_M=(power_developed*16)/del_G;//kg/hr;
//(methane moles)=16
printf("\n flow rate of Methane=%f kg/hr",R_F_R_O_M);
//Heat transfer Q=T8del_s=del_H+del_w=del_H-del_G
Q=del_H_at25degree_celcius-del_G_at25degree_celcius;
printf("\n The heat transfer is Q=%f kcal/kg mole",Q);

//The value are approximate in the text book to the real calculated value
//value of "Required flow rate of methane" is wrong in the text book.
//value of "Heat transfer" is wrong in the text book.
