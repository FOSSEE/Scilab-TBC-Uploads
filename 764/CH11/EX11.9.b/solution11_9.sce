
//Obtain path of solution file
path = get_absolute_file_path('solution11_9.sce')
//Obtain path of data file
datapath = path + filesep()+'data11_9.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf('\nApplying uniform-wear theory\n')
//Assume the clutch transmits maximum torque
//This implies d/D is 0.577
ratio = 0.577
//Evaluate inner diameter of the friction disks d (mm)
d = ratio * D
//Evaluate the clamping force P (N)
P = (%pi * Pa * d * (D-d))/(2 * 1000)
//Evaluate the pairs of contacting surfaces z
z = (4 * Mt * 1000)/(mu * P * (D+d))
//round up z
z = ceil(z)
//Evaluate the number of disks n
n = z + 1
n1 = ceil(n/2)
//Print results
printf('\nInner diameter of the friction disks(d) = %f mm\n',d)
printf('\nTotal clamping force(P) = %f N\n',P)
printf('\nThe total number disks required(n) = %f\n',n)
printf('\n%0.2f plane steel disks ',n1)
printf('and %0.2f steel disks with attached asbestos lining ',(n-n1))
printf('can be used or vice versa\n')