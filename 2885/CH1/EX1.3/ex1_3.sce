
//Find the equivalent current source
clear;
clc;
//soltion
//given
Vs=2;//Volts             //dc voltage source
Rs=1;//ohm               //internal resistance
Rl=1;//ohm              //load resistance
Ise=Vs/Rs;//ampere      //equivalent current source

// In accordance to figure 1.23a
Il1=Ise*(Rs/(Rs+Rl));//using current divider concept
Vl1=Il1*Rl;
printf("\nIn accordance to figure 1.23a \n");
printf("The Load current (current source) Il= %dA\n",Il1);
printf("The Load voltage (current source) Vl= %dV\n\n",Vl1);

// In accordance to figure 1.23b
Vl2=Vs*(Rs/(Rs+Rl));//using voltage divider concept
Il2=Vl2/Rl;
printf("\nIn accordance to figure 1.23b \n");
printf("The Load voltage (voltage source) Vl= %dV\n",Vl2);
printf("The Load current (voltage source) Il= %dA\n\n",Il2);
printf("Therefore they both provide same voltage and current to load");
