//Ex10.2.8.3;The heat transferred to the surrounding
del_G_at298k=-237191;//unit=kJ/kg mole
del_H_at298k=-285838;//unit=kJ/kg mole
ne=2;
F=96500;//Faraday's constant
E=-del_G_at298k/(ne*F);
printf(" E=%f volts",E);
nmax=del_G_at298k/del_H_at298k,
printf("\n nmax=%f",nmax);
nmax=nmax*100;
printf("=%f persent",nmax);
//Electric work output per mole of the fule is We=-del_G kJ/kg mole
We=del_G_at298k;//kJ/kg mole
printf("\n Electric work output per mole of the fule is We=%f kJ/kg mole",We);
//since there is 1 mol os H2O for each mole of fule,there is also a work output of 237191 kJ/kg mole
//Heat transferred is Q=T*del-s=del_H_at298k-del_G_at298k
Q=del_H_at298k-del_G_at298k;
printf("\n The heat transfer is Q=%f kJ/kg mole",Q);
//The negative sign indicates that the heat is removed from the cell and transferred to the surrounding

//value of "Electric work output per mole" is misprinted in the text book.
