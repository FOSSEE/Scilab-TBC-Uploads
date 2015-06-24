clear;
clc;

// Illustration 13.4
// Page: 758

printf('Illustration 13.4 - Page: 758\n\n');

// Solution

//***Data***//
// a:oil b:soyabean c:hexane
// Data=[100y*(Wt % oil in soln) 1/N(kg soln retained/kg insoluble solid)]
Data = [0 0.58;20 0.66;30 0.70];
// Soyabean feed:
percent_b = 20;// [soluble]
yF = 1;// [mass fraction oil,solid free basis]
// Solvent:
RNpPlus1 = 1;// [hexane,kg]
xNpPlus1 = 0;// [mass fraction oil]
// Leached Solids:
leached = 0.005;// [fraction of oil to be leached]
// Miscella:
percent_miscella = 10;// [percent of insoluble solid]
//**********//

N = zeros(3);
ystar_By_N = zeros(3);
for i = 1:3
    N(i) = 1/Data(i,2);// [kg insoluble solid/kg soln retained]
    ystar_By_N(i) = Data(i,1)/(100*N(i));// [kg oil/kg insoluble solid]
end
// Basis: 1 kg flakes introduced
// Soyabean feed:
mass_b = 1-(percent_b/100);// [insoluble,kg]
F = 1-mass_b;// [kg]
NF = mass_b/F;// [kg insoluble solid/kg oil]

// Leached Solids:
Ratio = leached/(1-leached);// [kg oil/kg insoluble solid]
// By interpolation:
Np = interpln([ystar_By_N';N'],Ratio);
miscella_b = (percent_miscella/100)*mass_b;// [Insoluble solid lost to miscella,kg]
leached_b = (1-(percent_miscella/100))*mass_b;// [Insoluble solid in miscella,kg]
ENp = leached_b/Np;// [kg soln retained]
retained_a = Ratio*leached_b;// [oil retained,kg]
retained_c = ENp-retained_a;// [Hexane retained,kg]
yNp = retained_a/ENp;// [mass fraction of oil in retained liquid]

// Miscella:
mass_c = 1-retained_c;// [kg]
mass_a = F-retained_a;// [kg]
R1 = mass_c+mass_a;// [clear miscella,kg]
x1 = mass_a/R1;// [mass fraction of oil in the liquid]
NR1 = miscella_b/R1;// [kg insoluble solid/kg soln]

// The operating diagram is shown in Fig 13.33 (Pg 759).
// Point R1 represents the cloudy miscella and is therefore is displaced from the axis of he graph at NR1. Point deltaR is located as usual and the stages determined with the N=0 axis for all the stages but the first.
printf("Between 4 and 5 stages are required\n");