//Given that
lmin = 400  //in nm
lmax = 690  //in nm
n2 = 1.33
L = 320  //in nm

//Sample Problem 36-4
printf("**Sample Problem 36-4**\n")
flag = 1
odd_number = 1
while flag == 1
    lambda = 4*L*n2/odd_number
    if lambda > lmin & lambda < lmax then
        flag = 0
    end
    odd_number = odd_number + 2
end
printf("The wavelength of the light is %1.2enm", lambda)