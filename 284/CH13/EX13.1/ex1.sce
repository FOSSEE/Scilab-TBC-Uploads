// Chapter 13_Optical Devices
//Caption_Optical absorption
//Ex_1//page 598
lambdai1=1*10^-4     //incident wavelength
lambdai2=0.5*10^-4
alpha1=100   //absorption coefficient
d1=1*log(1/0.1)/alpha1     //If 90percent of the incident flux is to be absorbed in a distance d , then the flux emerging at x=d will be 10% of the incident flux
alpha2=10000
d2=1*log(1/0.1)/alpha2*10^4
printf('As the incident photon energy increases, the absorption coefficient increases rapidly since d1=%1.4f cm and d2=%1.2f micrometer',d1,d2)
