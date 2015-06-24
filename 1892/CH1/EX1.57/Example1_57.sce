// Example 1.57

clear; clc; close;

format('v',7);
// Given data
VL=400;//in volt
Ist=1200;//in Ampere
Eff=0.85;//Efficiency
cosfi=0.8;//power factor
IstByIrated=5;//ratio
 
//Calculations
I2_rated=Ist/IstByIrated;//in Ampere
KWrating=sqrt(3)*VL*I2_rated*cosfi*Eff;//in KW
//To have star delta styarter tapping Xo=1/sqrt(3)
//Ist=X0^2*IstByIrated*IL
X0=1/sqrt(3);//tapping
IL=Ist/X0^2/IstByIrated;//in Ampere
KWmax=sqrt(3)*VL*IL*cosfi*Eff/1000;//in KW
disp(KWmax,"Maximum KW rating with star delta starter : ");
