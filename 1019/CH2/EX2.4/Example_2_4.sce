//Example 2.4
clear;
clc;

//Given
pH=7.4;//pH of the body fluid
v=3;//volume of gastric juice produced per day in dm^3
R=8.314;// gas constant in J K^-1 mol^-1
T=310;// temperature in K
ph=1;// pH of the gastric juice produced

// To determine minimum work required
c1=10^((-1)*pH);// hydrogen ion concentration of body fluid in mol dm^-3
c2=10^((-1)*ph);//hydrogen ion concentration of the gastric juice in mol dm^-3
n=c2*v;//moles of hydrogen ions in given volume of gastric juice
w=n*R*T* log(c2/c1);// w in joule
W=w*0.001;//w in kJ
mprintf('minimum work required (w) = %f kJ',W);
//end