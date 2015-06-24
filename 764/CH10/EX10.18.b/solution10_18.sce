
//Obtain path of solution file
path = get_absolute_file_path('solution10_18.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_18.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the force transmitted by the outer spring P1 (N)
val = (d2^4 * D1^3 * N1)/(d1^4 * D2^3 * N2)
P1 = P/(1 + val)
//Calculate the force transmitted by the inner spring P2 (N)
P2 = P - P1
//Calculate the maximum deflection in each spring delta (mm)
delta = (8 * P1 * (D1^3) * N1)/(G * (d1^4))
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
printf("\nMaximum deflection of the spring(delta) = %f mm\n",delta)
printf("\nMaximum torsional shear stress induced in the outer spring(tau1) = %f N/mm2\n",tau1)
printf("\nMaximum torsional shear stress induced in the inner spring(tau2) = %f N/mm2\n",tau2)
