// Example 7.3, page no-262
clear
clc

p=75        // rotation of plane of polarization

//Polarization rotation is inversaly propotional to square of the operating frequency
f= 5        //frequency increased by factor 
x=f^2       //rotation angle will decrease by aa factor of 25
p_ex=p/x
Apr=-20*log10(cosd(p))
Apr2=-20*log10(cosd(p_ex))
printf("For polarization  mismatch angle = 75°\n Attenuation = %.2f dB",Apr)
printf("\n\n For polarization  mismatch angle = 3° \n Attenuation = %.3f dB",Apr2)
