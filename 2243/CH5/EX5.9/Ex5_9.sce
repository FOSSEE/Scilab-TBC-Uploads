clc();
clear;
//Given :
rho = 6.6; // Specific rotation of sugar in degrees g^-1 cm^2
l = 20; //length in cm
deltad = 1*10^-3;//difference in sugar concentration in g/cm^3
lc = 0.1; // least count in degrees
//Rotation due to optical activity  = rho*l*d
deltatheta = rho*l*deltad; // in degrees
printf("Change in theta :%1.3f degrees.\n\n",deltatheta);

if(deltatheta > lc)
    printf("The concentration of 1 mg/cm^3 will be detected by the given urinalysis tube.");
  else
      printf("The concentration of 1 mg/cm^3 will not be detected.");
end      
