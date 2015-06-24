// Calcating the series resistance and approximate error
clc;
Rm=50;
Re=12;
E=33.3*10^-3;
i=0.1*10^-3;
Rs=(E/i)-Rm-Re;
disp(Rs,'series resistance (ohm)=')
Re=13;
i1=E/(Rs+Re+Rm);
AE=[(i1-i)/i]*800;
disp(AE,'approximate error due to rise in resistance of 1 ohm in Re (degree C)=')
R_change=50*0.00426*10;
i1=E/(Rs+Re+Rm+R_change);
AE=[(i1-i)/i]*800;
disp(AE,'approximate error due to rise in Temp. of 10 (degree C)=')