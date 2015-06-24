//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.7
clear;
clc;

//Given
//SO2 + (1/2)O2 - SO3
//Basis: 1 Kgmole of SO2
n_SO2 = 1;// SO2 fed in Kgmole
n_O2 = n_SO2;//O2 fed in kgmole

//To Calculate the conversion of SO2 to SO3 at 1atm and at various temperature
//(1)Calculate the conversion of SO2 to SO3 
P = 1;//Pressure in atm
T = 850;//Temperature in K
m = 1-1-(1/2);
//From example 14.6
Ta = [700 800 825 850 900 1000 1100 1300 1500];
Ka = [395.40 52.51 34.60 23.44 11.59 3.527 1.48 0.398 0.0016];
clf;
xset('window',2);
plot2d(Ta,Ka,style=3);
xtitle("Equilibrium constant vs Temperature","Temperature in K","Ka");
Ka1 = interpln([Ta;Ka],850);
//Let Nc be the moles of SO3 at equilibrium
Nc = [0.1 0.2 0.3 0.4 0.5 0.7 0.8 0.9 0.930 0.95 0.98 0.988 0.989 0.9895 0.9897 0.9899 0.9900];
//From equation 14.49 (page no 320) and using the given data ,we got equation (b) (page no 323)
for i = 1:17
    Ka(i) = (((n_SO2+n_O2-0.5*Nc(i))/(n_O2-0.5*Nc(i)))^(1/2))*(Nc(i)/(n_SO2-Nc(i)));
end
xset('window',1);
plot2d(Nc,Ka,style=2);
xtitle("Equilibrium constant vs Kgmoles of SO3","Kg moles of SO3","Ka");
Nc1 = interpln([Ka;Nc],Ka1);
C = Nc1*100/n_SO2;
mprintf('(1)The conversion of SO2 to SO3 at 1atm and 850K is %f percent',C);

//(2)Calculation of conversion at 1 atm and 850 K under the following conditions
//(i) Given:
n_N2 = 3.75;//Kgmoles of N2 fed
//Let Nc be the moles of SO3 at equilibrium
Nc = [0.85 0.87 0.90];
//From equation 14.49 (page no 320) and using the given data ,we got equation (c) (page no 324)
for i = 1:3
    Ka2(i) = (((+n_N2+n_SO2+n_O2-0.5*Nc(i))/(n_O2-0.5*Nc(i)))^(1/2))*(Nc(i)/(n_SO2-Nc(i)));
end
xset('window',1);
plot2d(Nc,Ka2,style=5);
Nc2 = interpln([Ka2';Nc],Ka1);
C2 = Nc2*100/n_SO2;
mprintf('\n\n (2)(i)The conversion of SO2 to SO3 at 1 atm and 850 K when inert gas is also added is %f percent',C2);

//(ii)SO3 is also sent along the original feed
n_SO3 = 1;//Kgmoles of SO3 fed
//Let Nc be the moles of SO3 at equilibrium
Nc = [0.80 0.86 0.92];
//From equation 14.49 (page no 320) and using the given data ,we got equation (d) (page no 326)
for i = 1:3
    Ka3(i) = (((+n_SO3+n_SO2+n_O2-0.5*Nc(i))/(n_O2-0.5*Nc(i)))^(1/2))*((n_SO3+Nc(i))/(n_SO2-Nc(i)));
end
xset('window',1);
plot2d(Nc,Ka3,style=6);
Nc3 = interpln([Ka3';Nc],Ka1);
C3 = Nc3*100/n_SO2;
mprintf('\n   (ii)The conversion of SO2 to SO3 at 1 atm and 850 K when SO3 is also added along the original feed is %f percent',C3);

//(iii)Variation of SO2 to O2 ratio:
//(a)SO2:O2 = 1:1 ; This has been worked out in part 1
mprintf('\n   (iii)(a)The conversion of SO2 to SO3 at 1atm and 850K when SO2:O2 = 1:1 is %f percent',C);
Xc = Nc1/(n_SO2+n_O2-0.5*Nc1);

//(b)SO2:O2 = 1.1:0.5,Now
n_SO2 = 1.1;//Kgmoles of SO2 fed
n_O2 = 0.5;//Kgmoles of O2 fed
//Let Nc be the moles of SO3 at equilibrium
Nc = [0.9 0.91 0.92];
//From equation 14.49 (page no 320) and using the given data ,we got equation (e) (page no 327)
for i = 1:3
        Ka4(i) = (((n_SO2+n_O2-0.5*Nc(i))/(n_O2-0.5*Nc(i)))^(1/2))*(Nc(i)/(n_SO2-Nc(i)));
end
xset('window',1);
plot2d(Nc,Ka4,style=1);
Nc4 = interpln([Ka4';Nc],Ka1);
C4 = Nc4*100/n_SO2;
mprintf('\n   (iii)(b)The conversion of SO2 to SO3 at 1atm and 850K when SO2:O2 = 1.1:0.5 is %f percent',C4);
Xc1 = Nc4/(n_SO2+n_O2-0.5*Nc4);

//(c)SO2:O2 = 1:0.5
n_SO2 = 1;//Kgmoles of SO2 fed
n_O2 = 0.5;//Kgmoles of O2 fed
//Let Nc be the moles of SO3 at equilibrium
Nc = [0.8 0.85 0.86 0.87];
//From equation (a) 
for i = 1:4
    Ka5(i) = (((n_SO2+n_O2-0.5*Nc(i))/(n_O2-0.5*Nc(i)))^(1/2))*(Nc(i)/(n_SO2-Nc(i)));
end
xset('window',1);
plot2d(Nc,Ka5,style=4);
Nc5 = interpln([Ka5';Nc],Ka1);
C5 = Nc5*100/n_SO2;
mprintf('\n   (iii)(c)The conversion of SO2 to SO3 at 1atm and 850K when SO2:O2 = 1:0.5 is %f percent',C5);
Xc2 = Nc5/(n_SO2+n_O2-0.5*Nc5);

if(Xc2>Xc) and (Xc2>Xc1)
    mprintf('\n        SO2:O2 = 1:0.5 gives the maximum concentration of SO3 at equilibrium.');
else
    if(Xc1>Xc) and (Xc1>Xc2)
        mprintf('\n        SO2:O2 = 1.1:0.5 gives the maximum concentration of SO3 at equilibrium');
    else
        if(Xc>Xc1) and (Xc>Xc2)
            mprintf('\n        SO2:O2 = 1:1 gives the maximum concentration of SO3 at equilibrium');
        end
   end
end

//(3)Conversion of SO2 to SO3 at 50 atm and 850 K when SO2:O2 = 1:1
n_SO2 = 1;//Kgmole of SO2 fed
n_O2 = 1;//Kgmoles of O2 fed
P = 50;//Pressure in atm
//From figure A.2.9
phi_SO2 = 0.99;
phi_SO3 = 0.972;
phi_O2 = 1;
//From equation 14.48 (page no320), Ka = Ky*(P^m)*K_phi
K_phi = phi_SO3/(phi_SO2*(phi_O2^2));
//Let Nc be the moles of SO3 at equilibrium
Nc = [0.99 0.985 0.97 0.96];
for i = 1:4
    Ka6(i) = K_phi*(P^m)*((((n_SO2+n_O2-0.5*Nc(i))/(n_O2-0.5*Nc(i)))^(1/2))*(Nc(i)/(n_SO2-Nc(i))));
end
xset('window',1);
plot2d(Nc,Ka6,style=3);
Nc6 = interpln([Ka6';Nc],Ka1);
C = Nc6*100/n_SO2;
mprintf('\n\n (3)The conversion of SO2 to SO3 at 50atm and 850K  when SO2:O2 = 1:1 is %f percent',C);
legend("1 part","2.(i) part","2.(ii)part","2.(iii).(b)part","2.(iii).(c)part","3 part");
//end