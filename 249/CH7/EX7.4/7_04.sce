clear
clc
//Mixed flow followed by plug flow would be best
//From ex 7.3
//For mixed flow
CAo=2;CA=1;Q=0.5;
Cs1=Q*(CAo-CA);
//For plug flow
Cs2=-1*integrate('2*CA/(1+CA)^2','CA',1,0);
//Total amount of CS formed is
Cs=Cs1+Cs2;
printf("Mixed flow followed by plug flow would be best")
printf("\n Total amount of CS formed(mol/litre) is %f \n",Cs)