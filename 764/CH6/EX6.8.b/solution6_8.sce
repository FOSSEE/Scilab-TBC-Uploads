
//Obtain path of solution file
path = get_absolute_file_path('solution6_8.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_8.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Compressive stress at the intermediate screw portion sigmac (N/mm2)
sigmac = Syt/fs
//Calculate the core diameter of the screw dc (mm)
dc = ((4 * W * 1000)/(%pi * sigmac))^(1/2)
//Round-up dc
dc = ceil(dc)
//Calculate the angle of repose fi (degree)
fi = atand(mu1)
//Calculate lead of the screw l (mm)
l = n * p
//Calculate the torque required to overcome collar friction Mtc (N-mm)
Mtc = ((mu2 * W * 1000)*(Do + Di))/4
//Calculate the maximum bending moment Mb (N-mm)
Mb = (F * dist)
//Obtain the correct value of nominal diameter d (mm)
for d = dc:1:%inf
    //Calculate the mean diameter of the screw dm (mm)
    dm = d - (0.5 * p)
    //Calculate the lead angle alpha (degree)
    alpha = atand(l/(%pi * dm))
    //Calculate the torque required Mt (N-mm)
    Mt = (W * 1000 * dm * tand(fi + alpha))/2
    //Calculate the total torque applied MTotal (N-mm)
    MTotal = Mt + Mtc
    //Calculate the new core diameter dcNew (mm)
    dcNew = d - p
    //Calculate the torsional shear stress at A-A tauA (N/mm2)
    tauA = (16 * MTotal)/(%pi * (dcNew^3))
    //Calculate the bending stress due to hand force sigmab (N/mm2)
    sigmab = (32 * Mb)/(%pi * (dcNew^3))
    //Calculate the maximum shear stress tauAMax (N/mm2)
    tauAMax = ((((sigmab/2)^2) + (tauA^2)))^(1/2)
    //Calculate the factor of safety fsA
    fsA = ((50/100) * Syt)/tauAMax
    //Calculate the torsional stress at section B-B tauB (N/mm2)
    tauB = (16 * Mtc)/(%pi * (dcNew^3))
    //Calculate the direct compressive stress due to clamping force Comp (N/mm2)
    Comp = (W * 1000 * 4)/(%pi * (dcNew^2))
    //Calculate the maximum shear stress tauBMax (N/mm2)
    tauBMax = (((Comp/2)^2) + (tauB^2))^(1/2)
    //Calculate the factor of safety fsB
    fsB = ((50/100)*Syt)/tauBMax
    //Check the factor of safety condition 
    if(fsB > fs & fsA > fs)
        break
    end
end
//Calculate the number of threads z
z = (4 * W * 1000)/(%pi * Sb * ((d^2) - (dcNew^2)))
z = ceil(z)
//Calculate the length of the nut L (mm)
L = z * p
//Calculate the radius of the ball hand Rm (mm)
Rm = MTotal/F
//Print results
printf('\nScrew\n')
printf('\nNominal diameter of the screw(d) = %f mm\n',d)
printf('\nCore diameter of the screw(dcNew) = %f mm\n',dcNew)
printf('\nNut\n')
printf('\nLength of the nut(L) = %f mm\n',L)
printf('\nNumber of threads(z) = %f\n',z)
printf('\nRadius of the ball hand(Rm) = %f mm\n',Rm)
