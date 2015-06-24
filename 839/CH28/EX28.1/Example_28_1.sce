//clear//
clear;
clc;

//Example 28.1
//Given
rho_p = 0.002650; //[g/mm^3]
a = 2;
phi_s = 0.571;
//Solution
//(a)
//For the 4/6-mesh increment, from Table 28.2
x = [0,2.51,12.5,32.07,25.7,15.9,5.38,2.10,1.02,0.77,0.58,0.41,0.31,0.75]'*10^-2; //[mass fraction]
Dp = [4.699,3.327,2.362,1.651,1.168,0.833,0.589,0.417,0.295,0.208,0.147,0.104,0.074,0.0]'; //[mm]
Dpbar(1) = 10^-5;
for i =2:length(Dp)
  Dpbar(i) = (Dp(i-1)+Dp(i))/2;
end

//(a)
//Using Eq.(28.4)
Aw = 6/(phi_s*rho_p)*sum(x(1:$-1)./Dpbar(1:$-1))/(1-x($)); //[mm^2/g]
Nw = 1/(a*rho_p)*sum(x(1:$-1)./Dpbar(1:$-1)^3)/(1-x($)); //[particles/g]
disp('particles/g',Nw,'Nw = ','mm^2/g',Aw,'Aw = ');

//(b)
//Using Eq.(28.9)
Dvbar = (1/sum(x(1:$-1)./Dpbar(1:$-1)^3)/(1-x($)))^(1/3); //[mm];
disp('mm',Dvbar,'Dvbar = ');

//(c)
//Using Eq.(28.6)
Dsbar = 1/sum(x(1:$-1)./Dpbar(1:$-1))/(1-x($)); //[mm]
disp('mm',Dsbar,'Dsbar = ');

//(d)
//Using Eq.(28.8) and Table 28.3
Dwbar = sum(x.*Dpbar); //[mm]
disp('mm',Dwbar,'Dwbar = ');

//(e)
//Using Eq.(28.11)
N2 = x($-1)/(a*rho_p*Dpbar($-1)^3); //[particles/g]
disp('particles/g',N2,'Nt = ');
fra = N2/Nw;
disp(fra,'Fraction of the particles in te top 12 increments = ');
