clc 
//initialisation of variables
K= 2 
VGS1= 5 //V
VGS2= 4 //V
VGS3= 3 //V
VGS4= 2 //V
//CALCULATIONS
id1= K*(VGS1-2)^2
id2= K*(VGS2-2)^2
id3= K*(VGS3-2)^2
id4= K*(VGS4-2)^2
//RESULTS
printf ('iD = %.f V ',id1)
printf ('\n iD = %.f V ',id2)
printf ('\n iD = %.f V ',id3)
printf ('\n iD = %.f V ',id4)
