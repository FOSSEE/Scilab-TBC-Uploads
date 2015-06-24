//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.4
clear;
clc;

//Given
//Basis: 1Kgmole of C0
//CO + (1/2)O2 - CO2
//Whem mixture entered,their compositions are given as:
n_CO = 1;//Kgmole
del_H = -67636;//Standard heat of reaction in Kcal/Kgmole at 25 deg cel
T1 = 95;//Temperature at which mixture entered in deg celsius
T2 = 25;//Intermediate temperature in deg celsius
//Mean specific heat values for the temperature between 25 and 95 deg celsius in Kcal/Kgmole are given as (from figure 14.4)(page no 303)
Cpm_CO = 6.95;
Cpm_O2 = 7.1;
Cpm_N2 = 6.95;

//To Calculate the theoretical flame temperature when both air and CO2 enter at 95 deg celsius
n_O2 = 1;//Kgmole, as 100% excess air is given
n_N2 = n_O2*(0.79/0.21);//Kgmole
//After the rxn:
n_CO2 = n_CO;//Kgmole
n_O2_r = n_O2-(n_CO/2);//remaining Kgmole of O2
//In equation 14.18 (page no 307) say: H_2-H_R = Ha, H_P-H_3 = Hb, Hc = del_H+Ha & Ht = Hc+Hb
Ha = (n_CO*Cpm_CO + n_O2*Cpm_O2 + n_N2*Cpm_N2)*(T2-T1);//in Kcal/Kgmole
Hc = del_H+Ha;//in Kcal/Kgmole
//For calculating Hb let us assume the temperature as
T = [530 1000 1650];//in deg celsius
Cpm_CO2 = [10.85 12 12.75];//Mean specific heat of CO2 at the coresspondig temperature (from figure 14.4)
Cpm_O2 = [7.55 7.8 8.3];//Mean specific heat of O2 at the coresspondig temperature (from figure 14.4)
Cpm_N2 = [7.15 7.5 7.85];//Mean specific heat of N2 at the coresspondig temperature (from figure 14.4)
for i = 1:3
    Hb(i) = (n_CO2*Cpm_CO2(i)+n_O2_r*Cpm_O2(i)+n_N2*Cpm_N2(i))*(T(i)-T2);//in Kcal/Kgmole
    Ht(i) = Hc+Hb(i);//in Kcal/Kgmole
end
clf;
plot(T,Ht);
xtitle(" ","Temperature, deg celsius","Ht in Kcal/Kgmole");
a = get("current_axes");
set(a,"x_location","origin");
Tf = interpln([Ht';T],0);
mprintf('The adiabatic temperature is read as %d degree celsius',Tf);
//end