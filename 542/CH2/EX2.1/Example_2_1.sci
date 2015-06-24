clear;
clc;
printf("\n Example 2.1");
//Computing energy required in particle size reduction by Rittinger's law
//energy required in crusing is given by E =Kr.fc((1/L2)-(1/L1))
//Given : Energy required in crushing particles from 50mm to 10mm is       13.0kw/(kg/sec).

Cr=13.0*(50/4);//Cr = Kr*fc

//Energy required to crush the particles from 75mm to 25mm
E = Cr*((1/25)-(1/75));
printf("\n The energy required in crushing the materials from average particle size of 75mm to 25mm by Rettingers law is %fkj/kg",E)

//Computing the energy required for crushing by Kick's law
//E = (Kk*fc)*ln(L1/L2) by Kick's law

Ck = (13.0)/log(50/10);//Ck = Kk*fc 

//Energy required to crush the material from 75mm to 25mm
Ek = Ck*log(75/25);
printf("\nThe energy required for crushing the material from average particle size of by Kicks law 75mm to 25mm is %fkj/kg \n",Ek);
printf("\n The size range required is that for coarse crushing and Kicks law more closely relates the energy required for plastic deformation before fracture occurs so the energy calculated as that by Kicks law will be taken as the more reliable result\n");
