
//To determine the horse power delivered by the locomotive
//Page 388
clc;
clear;

Ftl=35000; //Tractive Effort on a level surface
Ftg=55000; //Tractive Effort on a gradient
V=50; //Speed of the train
HP=735.5; //One Horse Power
Pl=Ftl*V*1000/(3600*HP); //Power Output(in HP) of the Locomotive on the level track

//CASE 1:
//D.C Series Motor, Power is directly proportional to the root of the Trative Effort 
HP1=Pl*sqrt(Ftg/Ftl);

//CASE 2:
//3 Phase Induction Motor, Power is directly proportional to the Trative Effort
HP2=Pl*(Ftg/Ftl);

printf('The Horse Power delivered by the locmotive when the motors used are:\n')
printf('i) D.C Series Motor is %g H.P \n',HP1)
printf('ii) 3 Phase Induction Motor is %g H.P \n',HP2)
//Note the Calculation Mistake in TextBook for case 2
