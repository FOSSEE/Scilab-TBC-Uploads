
//Obtain path of solution file
path = get_absolute_file_path('solution12_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the distance of the pivot from the axis of the drum h (mm)
h = (4 * (D/2) * sind(theta/2))/((theta * %pi/180) + sind(theta))
//Calculate the torque capacity of each shoe Mt (N-mm)
Mt = 2 * mu * (D/2)^2 * w * pmax * sind(theta/2)
//Calculate the reactions at the pivot Rx and Ry (N)
Rx = 0.5 * (D/2) * w * pmax * ((theta * %pi/180) + sind(theta))
Ry = 0.5 * mu * (D/2) * w * pmax * ((theta * %pi/180) + sind(theta))
//Print results
printf("\nDistance of pivot from axis of the drum(h) = %f mm\n",h)
printf("\nTorque capacity of each shoe(Mt) = %f N-mm\n",Mt)
printf("\nReaction in x-direction(Rx) = %f N\n",Rx)
printf("\nReaction in y-direction(Ry) = %f N\n",Ry)
