//determine dc & ac resistance of silicon diode
clear;
clc;
//soltion
//given
Id=20*10^-3;//A//diode current
Vd=0.75;//V// as given in the V-I graph
Rf=Vd/Id;
printf("The dc resistance of diode is %.1f Ω\n",Rf);

//From Graph the values of dynamic voltage and current are
//which is equal to MN and NL repectively (in graph)
del_Vd=(0.8-0.68);//V
del_Id=(40-0)*10^-3;//A
rf=del_Vd/del_Id;
printf("The ac resistance of the diode is %d Ω",rf)
