clear;
clc;
printf("\n Example 10.3");

//part 1
//Solvent in underflow from final washing thickener = 50 kg/s.
//The solvent in the overflow will be the same as that supplied for washing (200 kg/s).
//Solvent discharged in overflow/Solvent discharged in underflow=  forthe washing thickeners.
//Liquid product from plant contains 54.9 kg of salt in 195 kg of solvent.
//This ratio will be the same in the underflow from the first thickener.
printf("\n the material fed to the washing thickeners consists of 100 kg TiO2, 50 kg solvent and %d kg salt",50*(54.9/195));

//m =n+1
m = log(421)/log(4);
printf("\n The required number of thickeners for washing are %f",m);

//Part 2
//From an inspection of the data, it is seen that Wh = 0.30 + 0.2Xh.
//Thus: Sh = WhXh = 0.30Xh + 0.2X2h= 5Wh^2− 1.5Wh
//Considering the passage of unit quantity of TiO2 through the plant, then:
Ln = 0; wn = 2; Xn = 0;
//since 200 kg/s of pure solvent is used.
Sn = 0.001;
Wn = 0.3007;
So = 0.55;
Wo = 1.00;
//X1 = (Ln+1 + S0 − Sn)/(wn+1 + W0 − Wn)
X1 = (0+0.55-0.001)/(2+1-0.3007);
printf("\n concentration in the first thickener is %f",X1);

W1 = 0.30+0.2*0.203;
printf("\n W1 = %f",W1);
S1 = (0.3406*0.203);
printf("\n S1 = %f",S1);
X2 = (0.0691 - 0.001)/(1.7 + 0.3406);
printf("\n X2 = %f",X2);
W2 = (0.30+0.2*0.0334);
printf("\n W2 = %f",W2);
X3 = (0.01025-0.001)/(1.7+0.3067);
printf("\n X3 = %f",X3);
printf("\n W3 = 0.30089");
printf("\n S3 = %f",0.0013);
printf("\n W4 = %f and S4 = %f",0.30003,0.000045);
printf("\n Thus S4 is less than Sn and therefore 4 thickeners are required.");














