//Example 3.3.2page 3.27
clc;
clear;
n= 3.7;
lamda = 950*10^-9;
L= 500*10^-6;
c= 3*10^8;
DELv = c/(2*L*n)*10*10^-10; //converting in GHz...
printf("The frequency spacing is %d GHz",DELv);
DEL_lamda= lamda^2/(2*L*n)*10^9; //converting to nm..
printf("\n\nThe wavelength spacing is %.2f nm",DEL_lamda);

printf("\n\n***NOTE- The value of wavelength taken wrongly in book");
// value of lamda taken wrongly while soving for DEL_LAMDA inthe book..
