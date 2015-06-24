clear;
clc;
printf("\n Example 18.2");
c_NaNO3 = 2;               //per cent by mass
printf("\n Concentration of NaNO3 is %.3f kg/m^3",(c_NaNO3/85)*(103/100));
 
 //HNO3 (Molecular weight = 63 kg/kmol)
//Concentration = p per cent
//Concentration = (10p/63)(1030/1000)= 0.163p kg/m3
//In the solution: xNa+ = 0.242/(0.242 + 0.163p)
//For univalent ion exchange
//yNa+/(1 − yNa+ ) = KNa+H + [xNa+ /(1 − xNa+)]

yNa = 0.1;
K_NaH = 2/1.3;
p = poly([0],'p');
p1 = roots((0.1/0.9)*[0.163*p*(0.242+0.163*p)]-1.5*[0.242*(0.242+0.163*p)]);
printf("\n p = %d percent",p1(1));



