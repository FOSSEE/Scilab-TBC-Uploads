clear
//Depends on data22_4.sci file
//Obtain path of solution file
path = get_absolute_file_path('Ex22_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data22_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible strength of the material sigma (N/mm2)
sigma = Sut/fs
//Calculate the thickness of the cylinder t (mm)
if (behavior == 'brittle') then
    t = (Diround/2) * (sqrt((sigma + Pi)/(sigma - Pi)) - 1)
    tround = round(t)
    printf("\nThickness of the cylinder(t) = %f mm \n",tround)
elseif (behavior == 'ductile')
    t = (Di/2) * (sqrt((sigma + (1-2*mu)*Pi)/(sigma - (1+mu)*Pi)) - 1)
    tround = round(t)
    //Print results
    printf("\nThickness of the cylinder(t) = %f mm \n",tround)
else
    //Print results
    printf("Specify the material behavior")
end
