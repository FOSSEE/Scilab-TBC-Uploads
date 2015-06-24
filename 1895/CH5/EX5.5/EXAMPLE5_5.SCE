//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.5(PAGENO 200)");

//given
deltaf = 20*10^3//frequency deviation
deltaf_actual = deltaf//since deltaf_actual equals to deltaf
deltaf_max1 = 75*10^3//maximum frequency deviation deltaf_max permittedfor the first case is 75KHz
deltaf_max2 = 25*10^3//maximum frequency deviation deltaf_max permitted for the second case is 25KHz

//calculations
M1 = (deltaf_actual/deltaf_max1)*100//persentage modulation index for first case
M2 = (deltaf_actual/deltaf_max2)*100//persentage modulation index for second case

//results
printf("\n\ni.Percentage modulation index for first case = %.2f percent",M1);
printf("\n\nii.Percentage modulation index for second case = %.2f percent",M2);
