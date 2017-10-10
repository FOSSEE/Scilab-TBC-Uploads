clc; funcprot(0);
//Example 7.1  Pressure distribution in real fluid

// Initialisation of variables
ky_U = [-1.56 -4.00 -1.58 -2.71 -3.01 -7.36 -2.88 -4.40 -1.58 -2.20 -0.64 -0.60 -0.04];
ky_L = [-0.91 0.93 0.49 0.89 1.22 2.52 1.10 1.92 .86 1.56 0.70 1.16 0.23];
x = 0.1;
alpha = 16;
 
i = 1;L = 0; U = 0;
while(i < = length(ky_L)),
      L = L + ky_L(i);
      U = U + ky_U(i);
      i = i + 1 ;
end

// Calculations
Cn = x*(abs(L) + abs(U))/3;
Cc = -0.34;
Cl = Cn*cosd(alpha)-Cc*sind(alpha);

//Results 
disp(Cl,"Lift Coefficient :");