
//Function to print the designation
function[] = desig(z)
    printf('\nISLB%d is suitable for this application\n',z)
endfunction
 

//Obtain path of solution file
path = get_absolute_file_path('solution4_6.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_6.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Load supported by each beam P (kN)
P = (W/2)
//Distance of centre of gravity of the load from the rigid support d (mm)
d  = (l/3)
//Calculate the bending moment Mb (N-mm)
Mb = (P * 1000)*d
//Calculation of ratio Ixx/y (mm3)
ratio = Mb/sigmab
//Selection of beam
//There are 5 standard beams provided 
for i = 1:1:5 
    x = Ixx(i)/(h(i)/2)
//Break the loop if value of x exceeds value of ratio
    if (x > ratio)
        break
    end
end
//Print the suitable beam designation obtained
if (i == 1)
    desig(150)
elseif (i == 2)
    desig(175)
elseif (i == 3)
    desig(200)
elseif (i == 4)
    desig(250)
else
    desig(250)
end
