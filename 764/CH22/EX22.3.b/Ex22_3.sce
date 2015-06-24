clear
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0)
        v = v + (5 - rem)
    end
endfunction

//Depends on data22_3.sci file
//Obtain path of solution file
path = get_absolute_file_path('Ex22_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data22_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the total force acting on the piston P (kN)
P = F + (frac/100)*F
//Calculate the inner diameter of the cylinder Di (mm)
Di = sqrt((4 * P * 1000)/(%pi * Pi))
Diround = round_five(Di)
//Calculate the permissible strength of the material sigmat (N/mm2)
sigmat = Sut/fs
//Calculate the thickness of the cylinder t (mm)
if (behavior == 'brittle') then
    t = (Diround/2) * (sqrt((sigmat + Pi)/(sigmat - Pi)) - 1)
    tround = round(t)
    //Print results
    printf("\nInner diameter of the cylinder(Di) = %f mm \n",Diround)
    printf("\nThickness of the cylinder(t) = %f mm \n",tround)
elseif (behavior == 'ductile')
    t = (Di/2) * (sqrt((sigmat + (1-2*mu)*Pi)/(sigmat - (1+mu)*Pi)) - 1)
    tround = round(t)
    //Print results
    printf("\nInner diameter of the cylinder(Di) = %f mm \n",Diround)
    printf("\nThickness of the cylinder(t) = %f mm \n",tround)
else
    printf("Specify the material behavior")
end
