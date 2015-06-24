//Chemical Engineering Thermodynamics
//Chapter 2
//P-V-T Relations

//Example 2.8
clear;
clc;

//Given
V = 27*(10^-3);//Volume of the container in m^3
n = (15/70.91);//n is the Kg moles of chlorine
T = 293;//T is the temperature in K
R = 0.08206;
P = 10^(4.39-(1045/293));//P is the vapour pressure of chlorine
Pc = 76.1;//Critical pressure of Chlorine
Tc = 417;//Critical temperature of Chlorine 
Pr = P/Pc;//Reduced pressure of Chlorine
Tr = T/Tc;//Critical temperature of Chlorine
M = 70.91;//Molecular weight of the Chlorine

//To determine the vapour pressure of chlorine, amount of liquid Cl2 and temperature required
//(i)Specific volume of liquid Chlorine
//From figure A.2.2
Zg = 0.93;
//From figure A.2.6
Zl = 0.013;
vl = ((Zl*R*T)/P);
mprintf('(i)Specific volume of liquid Chlorine from compressibility chart is %f cubic meter /Kgmole',vl);

//From Francis relation, taking the constants from Table 2.3
D = (1.606-(216*(10^-5)*20)-(28/(200-20)))*10^3;//Density of liq Cl2 in Kg/m^3
Vl = M/D;
mprintf('\n   Specific volume of liquid Chlorine from Francis relation is %f cubic meter /Kgmole',Vl);

//(ii)Amount of liquid Cl2 present in the cylinder
vg = ((Zg*R*T)/P);
V1 = V-vg;//V1 is the volume of liquid Chlorine
Vct = 0.027;//volume of the container
Vg = (0.212-(Vct/vl))/((1/vg)-(1/vl));//By material balance
W = ((V-Vg)*70.9)/vl;
mprintf('\n\n (ii)Weight of Chlorine at 20deg cel is %f Kg',W);

//(iii)Calculation of temperature required to evaporate all the liquid chlorine
//log P' = 4.39 - 1045/T (given)
//Assume the various temperature
Ng = 0.212;//total Kg moles of gas
Ta = [413 415 417];
N = [0,0,0];
for i = 1:3
    Tr(i) = Ta(i)/Tc;//reduced temperature in K
    P(i) = 10^(4.39-(1045/Ta(i)));
    Pr(i) = P(i)/Pc;//reduced pressure in K
//From the compressibility factor chart,Z values coressponding to the above Tr &Pr are given as
Z = [0.4 0.328 0.208];
N(i) = (P(i)*Vct)/(Z(i)*R*Ta(i));
end

clf;
plot(N,Ta);
xtitle("Ta vs N","N","Ta");
T1 = interpln([N;Ta],0.212);//in K
mprintf('\n (iii)The temperature required to evaporate all the liquid chlorine is %f deg celsius',T1-273);
//end