//Chapter-13, Example 13.2, Page 545
//=============================================================================
clc
clear

//INPUT DATA
yh2=0.4;//Mole fraction og H2
yo2=0.6;//Mole fraction of O2
vh2=1;//velocity of H2 in m/s
vo2=0;//velocity of O2 in m/s

//CALCULATIONS
V=(yh2*vh2)+(yo2*vo2);//Molar average velocity in m/s
M=(yh2*2)+(yo2*32);//Molecular weight of the mixture
mh2=(yh2*2)/M;//Mass fraction of H2 
mo2=(yo2*32)/M;//Mass fraction of O2
v=(mh2*vh2)+(mo2*vo2);//Mass average velocity in m/s
x1=(mh2*vh2);//Mass flux 
x2=(mo2*vo2);//Mass flux
y1=(v*vh2);//Molar flux
y2=(yo2*vo2);//Molar flux
jh2=(mh2*(vh2-v));//Mass diffusion flux
jo2=(mo2*(vo2-v));//Mass diffusion flux
Jh2=(yh2*(vh2-V));//Molar diffusion flux
Jo2=(yo2*(vo2-V));//Molar diffusion flux

//OUTPUT
mprintf('Molar average velocity is %3.1f m/s \nMass average velocity is %3.2f m/s \n Mass flux of H2 when it is stationary is %3.2fp kg/m2.s3 \nMass flux of O2 when it is stationary is %3.0f kg/m^2.s \nMolar flux of H2 when it is stationary is %3.2fC k.mol/m^2.s \nMolar flux of O2 when it is stationary is %3.0f k.mol/m^2.s \nMass diffusion flux of H2 across a surface moving with mass average velocity is %3.4fp kg/m^2.s \nMass diffusion flux of O2 across a surface moving with mass average velocity is %3.4fp kg/m^2.s  \nMolar diffusion flux across a surface moving with molar average velociy for H2 is %3.2fC k.mol/m^2.s \nMolar diffusion flux across a surface moving with molar average velociy for O2 is %3.2fC k.mol/m^2.s',V,v,x1,x2,y1,y2,jh2,jo2,Jh2,Jo2)

//=================================END OF PROGRAM==============================
