clear;
clc;
printf("\n Example 12.1");
//Overall liquid transfer coefficient KLa = 0.003 kmol/s.m^3(kmol/m^3)

//(1/KLa)=(1/kLa)+(1/HkGa)
// let (KLa)=x
x = 0.003;
overall = 1/x;

//For the absorption of a moderately soluble gas it is reasonable to assume that the liquid and gas phase resistances are of the same order ofmagnitude, assuming them to be equal.
//(1/KLa)=(1/kLa)+(1/HkGa)
//let 1/kLa = 1/HkGa = y
y = (1/(2*x));
z = (1/y);            //z is in  kmol/s m^3(kmol/m^3)
printf("\n For S02:");
printf("\n    kGa = %f kmol/s m^3(kN/m^2)",z/50);
printf("\n For NH3:");
d_SO2 = 0.103;           //diffusivity at 273K for SO2 in cm^2/sec
d_NH3 = 0.170;           //diffusivity at 273K for NH3 in cm^2/sec
printf("\n    kGa = %f kmol/s m^3(kN/m^2)",(z/50)*(d_NH3/d_SO2)^0.56);
printf("\n For a very soluble gas such as NH3, kGa = KGa.");
printf("\n   For NH3 the liquid-film resistance will be small, and:");
printf("\n          kGa =KGa = %fkmol/s m^3(kN/m^2)",(z/50)*(d_NH3/d_SO2)^0.56);




