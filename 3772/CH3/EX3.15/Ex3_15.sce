// Problem 3.15,Page no.63

clc;clear;
close;

A_s=0.003848 //m**2 //Area of steel bar
A_al=0.003436 //m**2 //Area of Aluminium tube
E=220*10*9 //N //Young's modulus of steel
E=70*10*9 //N //Young's modulus of aluminium
P=600*10**3 //N //Load applied to the bar
//dell_L_al-dell_L_s=0.00015 //mm //difference between strain in aluminium bar and steel bar

//Calculations


//Let the aluminium tube be compressed by dell_L_al and steel bar by by dellL_s
//dell_L_al=sigma_al*E_al**-1*L_al
//dell_L_s=sigma_s*E_s**-1*L_s

//After substituting and simplifying above equation we get,
//((sigma_al*70**-1)-(sigma_s*220**-1))=300000               //(equation 1)

//After simplifying above equation we get,
//sigma_al=17462.165*10**4-1.1199*sigma_s                    //(equation 2)

//Now substituting sigma_al in equation(1)
//((17462.165*10**4-1.1199*sigma_s)*(70)**-1)-(sigma_s*220**-1)=300000

//After simplifying above equation we get,

sigma_s=-((300000-249.4594*10**4)*0.0205444**-1)*10**-6 //MN/m**2 //stress developed in steel bar
//sigma_al=17462.165*10**4-1.1199*sigma_s
sigma_al=(17462.165*10**4-1.1199*106822005.02)*10**-6


//Result
printf("stress developed in steel bar is %.2f MN/m^2",sigma_s)
printf("\n stress developed in aluminium bar is %.2f MN/M^2",sigma_al)
