//Chapter 7, Example 7.4, page 302
clc

//Initialisation
hr=-1                       //obstacle height and fresnel radius ratio

//Calculation
Ad=-20*hr+10                 //Diffraction loss in dB
Ad2=16                       //from fig 7.8
Ad3=43

//Results
printf("(1) Obstacle loss = %.1f dB",Ad)
printf("\n(2) Knife edge obstacle = %.1f dB",Ad2)
printf("\n(3) Rounded obstacle = %.1f dB",Ad3)
