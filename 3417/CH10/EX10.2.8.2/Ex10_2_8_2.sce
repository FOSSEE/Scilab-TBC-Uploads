//Ex10.2.8.2;calculate voltage output of cell,efficiency,electric work output,heat transfer to the surroundings

//1] voltage output of cell
del_G=-237.3*10^3;//Joules/gm-mole of H2
n=2;
F=96500;//Faraday's constant
E=-del_G/(n*F);
printf(" E=%f volts",E);
//2] Efficiency
//nmax=del_Wmax/-(del_H)25 degree celcuis = -(del_G)T/(-del_H)25
del_G_at298k=-56690;//unit=kcal/kg mole
del_H_at298k=-68317;//unit=kcal/kg mole
nmax=del_G_at298k/del_H_at298k,
printf("\n nmax=%f",nmax);
//3]Electric work output per mole
F=(96500/4.184);
del_Wrever=(n*F*E);
printf("\n Electric work output per mole=%f kcal/kg mole",del_Wrever);
//4] Heat transfer to the surroundings
//the heat transfer is Q=T*del-s=del_H_at298k-del_G_at298k
Q=del_H_at298k-del_G_at298k;
printf("\n The heat transfer is Q=%f kcal/kg mole",Q);
//The negative sign indicates that the heat is removed from the cell and transferred to the surrounding

//value of "Electric work output per mole" is approximate in the text book to the real calculated value