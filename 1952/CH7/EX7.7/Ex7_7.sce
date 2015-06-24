// chapter 7 , Example 7.7 , pg 211
rho=2300   //resistivity  (in ohm*m)   for Si            (value given in book is wrong)
ni=1.6*10^16     //intrinsic concentration   (in m^-3)
Ue=0.15      //electron mobility   (in m^2/(V*s))
e=1.6*10^-19    //charge of electron   (in C)
//   assuming  1*1*1 (in cm)  dimension of Si crystal
l=10^-2    //length   (in m)
b=10^-2     //breadth   (in m)
w=10^-2      //width   (in m)
Nsi=5*10^28    //   (in atoms/m^3)
x=1/10^9      //doping concentration
A=l*b     //area   (in m^2)
R1=(rho*l)/A      //resistance of pure Si crystal   (in ohm)
Nd=Nsi*x      //donor concentration    (in m^-3)
p=ni^2/Nd   //concentration of hole   (in m^-3)
sigma=Nd*Ue*e   //coductivity of doped Si   (in ohm^-1*m^-1)
R=l/(sigma*A)    //resistance of doped Si crystal   (in ohm)
printf("Resistance of pure Si crystal  (in ohm)")
disp(R1)
printf("Resistance of doped Si crystal (in ohm)")
disp(R)


//answer given is wrong
