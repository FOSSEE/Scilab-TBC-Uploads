//Calculate the Optical Rotation of Lysine solution ,What is the difference between the Refractive indices of the left and right circularly polarized light and What is Molar Rotation of Lysine solution

//Example 18.2

clc;

clear;

c=0.148;  //Concentration of opticall active substance of L Lusine in g cm^-3

L1=10/10; //Length of the cell in dm

alpha1=+13.5;  //Specific rotation of L-Lssine in dm^-1 cm^3 g^-1 degree

alpha=alpha1*c*L1; //Optical Rotation of Lysine solution in degree (A positive alpha means that the plane of polarization is rotated to the right as one looks into the beam)

printf("(a)Optical Rotation of Lysine solution = +%.0f degree",alpha);

alpha2=+2; //The angle of rotation

lemda=589.3*10^-9; //Wavelength of light employed in m

L2=10/100; //Length of the cell in m

d=(alpha2*lemda)/(180*L2);  //Difference between the Refractive indices of the left and right circularly polarized light (d=nl-nr)

printf("\n(b)Difference between the Refractive indices of the left and right circularly polarized light = %.1f*10^-8",d*10^8);

alpha3=+13.5; //Specific rotation of L-Lysine solution in dm^-1 cm^3 g^-1

mew=146.2;  //Molar mass of L-Lysine solution in g mol^-1

fi=(alpha3*mew)/100; //Molar rotation of lysine solution in dm^-1 cm^3 mol^-1

printf("\n(c)Molar Rotation of Lysine solution = %.1f dm^-1 cm^3 mol^-1",fi);
