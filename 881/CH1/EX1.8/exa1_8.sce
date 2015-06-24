clc;
//Example 1.8
//Page no 17

//Solution

//Refer to figure 1-5 on page no 17

//(a)

disp("(a)Medium Frequencies as per ITU-T range between 0.3MHz and 3MHz.");

lm1=([3*(10^8)]/[0.3*(10^6)]);

lm2=([3*(10^8)]/[3*(10^6)]);
 
disp('m',lm2,'and','m',lm1,"Therefore, wavelengths range for MF are between ");

//(b)

disp("(b)Ultra High Frequencies as per ITU-T range between 300MHz and 3GHz.");

lm3=([3*(10^8)]/[300*(10^6)]);

lm4=([3*(10^8)]/[3*(10^9)]);

disp('m',lm4,'and','m',lm3,"Therefore, wavelengths range for UHF are between ");

//(c)

disp("(c)Very High Frequencies as per ITU-T range between 30MHz and 300Mz.");

lm5=([3*(10^8)]/[30*(10^6)]);

lm6=([3*(10^8)]/[300*(10^6)]);
 
disp('m',lm6,'and','m',lm5,"Therefore, wavelengths range for VHF are between ");

