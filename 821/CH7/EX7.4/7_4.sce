C=2.768*10^-3;//conductivity of the cell in ohm^-1 cm^-1//
R=82.4;//resistance with KCl solution filled in ohms//
K=C*R;//cell constant in cm^-1//
printf('Cell constant=K=%fcm^-1',K);
R1=326;//resistance with K2SO4 solution filled in ohms//
c=K/R1;//Equivalent conductance of the KCl solution in ohm^-1 cm^-1//
printf('\nEquivalent conductance of the KCl solution=c=%f=7*10^-4ohm^-1 cm^-1',c);
printf('\n0.0025M K2SO4 solution=0.005N of K2SO4.');
EC=1000*c/0.005;//equivalent conductance of K2SO4 solution in ohm^-1 cm^2//
printf('\nEquivalent conductance of K2SO4 solution=EC=%fohm^-1cm^2',EC);
