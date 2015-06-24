clc
//Given that
lambda = 4.3e-7 // wavelength of light in meter
phi_K = 2.3 // work function of nickel in eV
h = 6.624e-34 // plank's constant
c = 3e8 // speed of light
m_e = 9.1e-31 // mass of electron in kg
//Sample Problem 8b Page No. 138
printf("\n\n\n # Problem 8b # \n")
lambda_threshold = h * c / (phi_K *1.6e-19) //calculation of longest wavelength required
if (lambda_threshold < lambda) then
    printf("As the threshold wavelength is less than wavelength of incident radiation Solectron will not be ejected \n")
else 
    v = sqrt((2* h * c *( lambda_threshold - lambda)) / (m_e * lambda_threshold * lambda )) //calculation of ejected velocity Electron
    printf("\n As the threshold wavelength is greater than wavelength of incident radiation So \n electron will be ejected with velocity %e m/s. ",v)
end
