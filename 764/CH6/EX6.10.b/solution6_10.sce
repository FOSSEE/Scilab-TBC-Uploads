
//Function to round-up a value such that it is divisible by 10
function[v] = round_ten(w)
    v = ceil(w)
    rem = pmodulo(v,10)
    if (rem ~= 0) then
    v = v + (10 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution6_10.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_10.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate force required to shear the sheet W (N)
W = (%pi * d * t * Sus)
//Compressive stress in the screw sigmac (N/mm2)
sigmac = Syt/fs
//Core diameter of the screw dc (mm)
dc = ((4 * W)/(%pi * sigmac))^(1/2)
dc = ceil(dc)
//Obtain the correct number of starts for the screw n
for n = 1:1:%inf
    //Calculate the lead of the screw l (mm)
    l = n * p
    if (l > lmin) then
        break
    end
end
//Obtain the correct nominal diameter d in multiples of 10 (mm)
for d = dc:1:%inf
    d = round_ten(d)
    //Calculate the mean diameter of the screw dm (mm)
    dm = d - (0.5 * p)
    //Calculate the lead angle alpha (degree)
    alpha = atand(l/(%pi * dm))
    //Calculate the angle of repose (fi)
    fi = atand(mu)
    //Calculate the torque required Mt (N-mm)
    Mt = (W * dm * tand(fi + alpha))/2
    //Calculate the new core diameter dcNew (mm)
    dcNew = d - p
    //Calculate the stress in the screw CNew (N/mm2)
    CNew = ((W * 4)/(%pi * (dcNew^2)))
    //Calculate the torsional stress tau (N/mm2)
    tau = (16 * Mt)/(%pi * (dcNew^3))
    //Calculate the maximum shear stress tauMax (N/mm2)
    tauMax = (((CNew/2)^2) + (tau^2))^(1/2)
    //Calculate the afctor of safety fsNew
    fsNew = ((50/100)*Syt)/tauMax
    if(fsNew > fs)
        break
    end
end
//Calculate the efficiency of the screw eta (%)
eta = (tand(alpha)/tand(fi + alpha))*100
//Calculate the number of threads z
z = (4 * W)/(%pi * Sb * ((d^2) - (dcNew^2)))
z = ceil(z)
//Calculate the length of the nut L (mm)
L = z * p
//Calculate the shear stress in the screw tauS (N/mm2)
to = p/2
tauS = (W/(%pi * dcNew * to * z))
//Calculate the shear stress in the nut tauN (N/mm2)
tauN = (W/(%pi * d * to * z))
//Calculate the work done by the punch work (J)
work = (W * (t/2))/1000
//Work done by balls workB (J)
workB = work/(eta/100)
//Calculate the average angular velocity wavg (rad/s)
wavg = fsd/tf
//Calculate the maximum angular velocity wmax (rad/s)
wmax = 2 * wavg
//Calculate the mass of the one ball m (kg)
m = ((workB * 2)/(((Rm/1000)^2) * (%pi^2)))/2
//Calculate the diameter of the ball dia (mm)
dia = ((m * 6)/(%pi * dense))^(1/3)
//Print results
printf('\nScrew\n')
printf('\nNominal diameter of the screw(d) = %f mm\n',d)
printf('\nCore diameter of the screw(dcNew) = %f mm\n',dcNew)
printf('\nLead of the screw(l) = %f mm\n',l)
printf('\nNut\n')
printf('\nLength of the nut(L) = %f mm\n',L)
printf('\nMass of each ball(m) = %f kg\n',m)
printf('\nDiameter of each ball(dia) = %f mm\n',dia*1000)
