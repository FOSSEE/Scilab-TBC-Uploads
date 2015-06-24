
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Function to round-up a value such that it is divisible by 10
function[v] = round_ten(w)
    v = ceil(w)
    rem = pmodulo(v,10)
    if (rem ~= 0) then
    v = v + (10 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_15.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_15.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible stresses for lever and pin sigmat (N/mm2)
sigmat = Syt/fs
//Calculate the yield strength in shear Ssy (N/mm2)
Ssy = (50/100)*Syt
//Calculate the permissible stress in shear tau (N/mm2)
tau = Ssy/fs
//Calculate the maximum steam load F (N)
F = (%pi/4)*((de^2) * p)
//Calculate the dead weight P (N)
P = (F * l2)/l1
//Calculate reaction at fulcrum R (N)
R = F - P
//Assume length and diameter of pin to be equal (lp = dp)
dp = sqrt(F/Bp)
dp = ceil(dp)
lp = dp
//Calculate the shear stress in pin tau1 (N/mm2)
tau1 = F/(2 * (%pi/4) * (dp^2))
//Calculate gunmetal bush thickness t (mm)
t = 2
//Calculate inside diameter of the boss di (mm)
di = dp + (2 * t)
//Calculate the outside diameter of the boss d0 (mm)
d0 = 2 * di
//Calculate the maximum banding moment Mb (N-mm)
Mb = P*(l1 - l2)
//Assume the thickness of the cross-section to be 1mm b
b = 1
//Calculate the width of the cross-section d (mm)
d = ratio * b
//Calculate the value of y (mm)
y = d/2
//Calculate the second moment of area I (mm4)
I = (b * ((ratio * b)^3))/12
//Calculate the true value of b (mm)
b = ((Mb * y)/(sigmat * I))^(1/3)
b = round_five(b)
//Calculate the true value of d (mm)
d = ratio * b
lp = round_ten(lp) 
//For lever cross-section 
y1 = d/2
I1 = ((b * (d^3)) + ((lp - b) * (d0^3)) - (lp * (di^3)))/12
//Calculate the bending stress for the modified design sigmab (N/mm2)
sigmab = (Mb * y1)/I1
//Print results
printf('\nThe diamater of the pin(dp) = %f mm\n',dp)
printf('\nThe length of the pin(lp) = %f mm\n',lp)
printf('\nThe thickness of the lever cross-section(b) = %f mm\n',b)
printf('\nThe width of the lever cross-sectio(d) = %f mm\n',d)
printf('\nThe dead weight(P) = %f mm\n',P)
//Check for design safety
if(tau1<tau & sigmab<sigmat)
    printf('\nThe lever design is safe\n')
end
