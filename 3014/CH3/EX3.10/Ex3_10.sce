 clc
//given that
E = 100 // Energy of X ray beam in KeV
theta = 30 // Scattering angle in degree
m = 9.1e-31 // mass of electron in kg
c = 3e8 // Speed of light in m/s
printf("Example 3.10")
E_rest = m*c^2/(1.6e-19*1e3) // Rest mass energy in KeV
k = 1/E + (1-cos(theta*%pi/180))/(E_rest)
del_e = E - 1/k // Energy of recoiled electron
    printf("\n  Energy of recoiled electron is %f KeV\n\n\n",del_e)
