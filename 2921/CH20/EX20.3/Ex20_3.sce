clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-20.3 Page No.434\n');

R=1200;
Ft=500;
n=1500;
L10=5000;

//Assume thrust factor=1.6

Y=1.6;

Pd=0.56*R+Y*Ft;

Ld=n*L10*60/10^6;
Lc=1;
k=3;
Cd=Pd*(Ld/Lc)^(1/k);

//For bearing number 6215

Cd1=11400;
Cs1=9700;

//Verify the assumption for Y
Ft_Cs1=Ft/Cs1;

Y=(0.056-Ft_Cs1)*(1.99-1.71)/(0.056-0.028)+1.71;

Pd=0.56*R+Y*Ft;

Cd=Pd*(Ld/Lc)^(1/k);

if Cd>Cd1 then
    mprintf('\n Since Cd of bearing < Cd required, So bearing number 6215 is not acceptable.');    
end

//For bearing number 6216
Cd2=12600;
Cs2=10500;

Ft_Cs2=Ft/Cs2;
Y=(0.056-Ft_Cs2)*(1.99-1.71)/(0.056-0.028)+1.71;

Pd=0.56*R+Y*Ft;

Cd=Pd*(Ld/Lc)^(1/k);

if Cd<Cd2 then
    mprintf('\n Since Cd of bearing > Cd required, So bearing number 6215 meets the design criteria.');
end
