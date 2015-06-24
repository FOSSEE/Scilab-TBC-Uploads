//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 3
//RADIO TRANSMITTER
clear all;
clc;
printf("EXAMPLE 3.2(PAGENO 138)");

//given from the figure
f = 20*10^6//frequency in hertz
//At point 1 from fig
f_c1 = 2*13.5*10^6//carrier frequency
deltaf1 = 2*8.5*10^3//change in frequency

//calculations
f_max1 = f_c1 + deltaf1//maximum frequency at point 1 in fig
f_min1 = f_c1 - deltaf1//maximum frequency at point 1 in fig
f_d1 = f_max1 - f_c1;//frequency deviation at point 1 in fig
f_d2 = f_c1 - f_min1;//frequency deviation at point 1 in fig
//At point 2 from fig
f_c2 = 3*f_c1//carrier frequency
deltaf2 = 3*deltaf1//change in frequency
f_max2 = f_c2 + deltaf2//maximum frequency at point 2 in fig
f_min2 = f_c2 - deltaf2//minimum frequency at point 2 in fig
f_d3 = f_max2 - f_c2;//frequency deviation at point 2 in fig
f_d4 = f_c2 - f_min2;//frequency deviation at point 2 in fig
//At point 3 in fig
f_c3 = f_c2 + f;//carrier frequency at point 3 in fig
f_max3 = f_max2 + f//maximum frequency at point 3 in fig
f_min3 = f_min2+ f//minimum frequency at point 3 in fig
f_d5 = f_max3 - f_c3;//frequency deviation at the last point
f_d6 = f_c3 - f_min3 ;//frequency deviation at the last point

//results
printf("\n\ni.a Carrier frequency at point 1 in fig =%.2f Hz ",f_c1);
printf("\n\n  b Frequency deviation =%.2f Hz ",f_d1);
printf("\n\n  c Frequency deviation  =%.2f Hz ",f_d2);
printf("\n\nii.a Carrier frequency at point 2 in fig =%.2f Hz ",f_c2);
printf("\n\n    b Frequency deviation =%.2f Hz ",f_d3);
printf("\n\n    c Frequency deviation  =%.2f Hz ",f_d4);
printf("\n\nii.a Carrier frequency at point 3 in fig =%.2fHz ",f_c3);
printf("\n\n    b Frequency deviation =%.2f Hz ",f_d5);
printf("\n\n    c Frequency deviation  =%.2f Hz ",f_d6);
printf("\n\nThus, in mixer, frequency deviation is not altered but only carrier frequency\n is increased")
