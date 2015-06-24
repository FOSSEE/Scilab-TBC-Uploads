
//Obtain path of solution file
path = get_absolute_file_path('solution12_10.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_10.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the tension in the band on tight side P1 (N)
P1 = sigmat * w * t
//Calculate the tension in the band on the loose side P2 (N)
P2 = P1/(%e^(mu * theta * %pi/180))
//Calculate the actuating force on the lever P (N)
P = (P2 * d1 - P1 * d2)/(d3 + d1)
//Calculate the torque capacity of the brake Mt (N-m)
Mt = (P1 - P2)*R
//Check self-locking
if ((d1 / d2)>(%e^(mu * theta * %pi/180)))
    printf("\nThe brake is not self-locking\n")
else
    printf("\nThe brake is self-locking\n")
end
//Print results
printf("\nTension in the band on the tight side(P1) = %f N\n",P1)
printf("\nTension in the band on the loose side(P2) = %f N\n",P2)
printf("\nActuating force(P) = %f N\n",P)
printf("\nTorque capacity of the brake(Mt) = %f N-m\n",Mt/1000)
