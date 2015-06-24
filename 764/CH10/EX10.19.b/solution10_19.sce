
//Obtain path of solution file
path = get_absolute_file_path('solution10_19.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_19.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the stiffness of the outer spring k1 (N/mm)
k1 = (G * d1^4)/(8 * D1^3 * N1)
//Calculate the stiffness of the inner spring k2 (N/mm)
k2 = (G * d2^4)/(8 * D2^3 * N2)
//Axial force on the outer spring corresponding to compression till delta Pa (N)
Pa = k1 * dif
//Remaining load shared by the two springs Prem (N)
Prem = P - Pa
//Combined stiffness of the two springs k (N/mm)
k = k1 + k2
//Further compression of the two springs x (mm)
x = Prem/k
//Compression of the outer spring delta1 (mm)
delta1 = dif + x
//Compression of the inner spring delta2 (mm)
delta2 = x
//Force transmitted by the outer spring P1 (N)
P1 = k1 * delta1
//Force transmitted by the inner spring P2 (N)
P2 = k2 * delta2
//Calculate the spring index of outer and inner springs C1 and C2 resp.
C1 = D1/d1
C2 = D2/d2
if (C1 == C2)
    //Calculate the Wahl Factor
    K = (4 * C1 - 1)/(4 * C1 - 4) + 0.615/C1
    //Calculate the torsional shear stress in the outer spring tau1 (N/mm2)
    tau1 = (K * 8 * P1 * C1)/(%pi * d1^2)
    //Calculate the torsional shear stress in the inner spring tau2 (N/mm2)
    tau2 = (K * 8 * P2 * C2)/(%pi * d2^2)
elseif (C1 ~= C2)
    //Calculate the Wahl Factor for the outer spring K1
    K1 = (4 * C1 - 1)/(4 * C1 - 4) + 0.615/C1
    //Calculate the Wahl Factor for the inner spring K2
    K2 = (4 * C2 - 1)/(4 * C2 - 4) + 0.615/C2
    //Calculate the torsional shear stress in the outer spring tau1 (N/mm2)
    tau1 = (K1 * 8 * P1 * C1)/(%pi * d1^2)
    //Calculate the torsional shear stress in the inner spring tau2 (N/mm2)
    tau2 = (K2 * 8 * P2 * C2)/(%pi * d2^2)
end
//Print results
printf("\nForce transmitted by the outer spring(P1) = %f  N\n",P1)
printf("\nForce transmitted by the inner spring(P2) = %f  N\n",P2)
printf("\nCompression of the outer spring(delta1) = %f mm\n",delta1)
printf("\nCompression of the inner spring(delta2) = %f mm\n",delta2)
printf("\nMaximum torsional shear stress induced in the outer spring(tau1) = %f N/mm2\n",tau1)
printf("\nMaximum torsional shear stress induced in the inner spring(tau2) = %f N/mm2\n",tau2)
