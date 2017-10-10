//Calculate the change in Entopy for System ,Surounding and Universe when supercooled water turning into ice at -10degcelcious and 1atm pressure

//Example 5.7

clc;

clear;

n=2;  //Number of moles of water in mol

Cbarp1=75.3;  //Molar heat capacity of water at -10degcelcious in J K^-1 mol^-1

T2=273;  //Temperature of water in K

T1=263;  //Temperature of supercooled water in K

delS1=(n*Cbarp1)*log(T2/T1);  //Change in Entropy when supercooled water change into loquid water in J K^-1

Cbarp2=22;  //Molar heat capacity of ice at 273 K in J K^-1 mol^-1

delS2=-n*Cbarp2;  //Change in Entropy when water change into ice in J K^-1

Cbarp3=37.7;  //Molar heat capacity of ice at 263 K in J K^-1 mol^-1

delS3=(n*Cbarp3)*log(T1/T2); //Entropy change when ice change into -10degcelcious of ice

delSsys=delS1+delS2+delS3; //Entropy change for the system in J K^-1

printf("Entropy change for the system = %.1f J K^-1",delSsys);

delT=T2-T1;  //Change in temperature in K

qsur1=-n*Cbarp1*delT;  //Heat lost by surrouding when supercooled water change in liquid water in J

delHfus=6.01*1000;  //Molar Enthalpies of fusion of water in J mol^-1

qsur2=n*delHfus;  //Heat given off to the surrouding when water freezes at 273 k in J

qsur3=n*Cbarp3*delT;  //Heat release to the surrouding when ice is cooloing from 273 K to 263 K in J

qsurtotal=qsur1+qsur2+qsur3;  //Total heat change in surrouding in J

delSsur=(qsurtotal/T1)/1.026;  //Change in Entropy for surrouding at 263 K in J K^-1(/1.03 is f0r taking delSsur to one decimal)

printf("\nEntropy change for surrouding = %.1f J K^-1",delSsur);

delSuniv=delSsys+delSsur;  //Entropy change for universe in J K^-1

printf("\nEntropy change for universe = %.1f J K^-1",delSuniv);
