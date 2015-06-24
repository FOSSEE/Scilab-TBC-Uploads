clear
clc
M1=324.6;//molar mass of Hg(NO3)2 in gm
m1=3.24;//amount of Hg(NO3)2 in gm dissolved in water
w=1;//amount of water in kg
M0=(m1/M1)*(1/w);//molality of the solution in K
Kf=1.86;//in Kkg/mol
DelTf_0=(Kf*M0);// here DelTf_0 is negative
DelTf=0.0558;//freezing point of the solution here DelTf is negative 
i=(DelTf/DelTf_0);//van't hoff factor
v=3;
alpha=(i-1)/(v-1);//degree of dissociation
printf('alpha=%1d',alpha)
M2=271.5;//molar mass of HgCl2 in gm
m2=10.84;//amount of HgCl2 dissolved in water in gm
M=(m2/M2)*(1/w);//molality of HgCl2 solution in mol/kg
DelTf1_0=Kf*M;//for HgCl2 solution
printf('\nDelTf1_0=%.3f K',DelTf1_0)

//page 76
