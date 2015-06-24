//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0)
        v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution12_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the normal reaction of the drum on the lever N (N)
N = (Mt * 1000)/(mu * R)
//For CLOCKWISE ROTATION
//Calculate the actuating force P (N)
Pc = ((N * d2) - (mu * N * d3))/(d1 + d2)
//Calculate the reaction at the pivot R (N)
Rc = sqrt((mu * N)^2 + (N - Pc)^2)
//For ANTICLOCKWISE ROTATION
//Calculate the actuating force P (N)
Pcc = ((N * d2) + (mu * N * d3))/(d1 + d2)
//Calculate the reaction at the pivot R (N)
Rcc = sqrt((mu * N)^2 + (N - Pcc)^2)
//Calculate the initial velocity of the drum v1 (m/s)
v1 = (2 * %pi * n * (R/1000))/60
//Calculate the average velocity of the drum vavg (m/s)
vavg = (v1 + v2)/2
//Calculate the rate of heat generated during braking action E (W)
E = mu * N * vavg
//Calculate the width of the block w (mm)
w = sqrt(N/(p * r))
//Calculate the length of the block l (mm)
l = r * round_five(w)
//Check self-locking tendency
if ((d2/d3) == mu)
    printf("\nThe brake is self-locking\n")
else
    printf("\nThe brake is not self-locking\n")
end
//Print results
printf("\nFOR CLOCKWISE ROTATION\n")
printf("\nActuating force(Pc) = %f N\n",Pc)
printf("\nReaction at the hinge pin(Rc) = %f N\n",Rc)
printf("\nFOR ANTICLOCKWISE ROTATION\n")
printf("\nActuating force(Pcc) = %f N\n",Pcc)
printf("\nReaction at the hinge pin(Rcc) = %f N\n",Rcc)
printf("\nRate of heat generated(E) = %f W\n",E)
printf("\nWidth of the block(w) = %f or %f mm\n",w,round_five(w))
printf("\nLength of the block(l) = %f mm\n",l)
