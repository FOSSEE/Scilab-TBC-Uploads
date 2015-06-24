//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.4(PAGENO 489)");
//given
Px_1 = 1/4//probability wrt to binary PCM '0'
Px_2 = 3/4//probability wrt to binary PCM '1'

//calculations
Ix_1 = log2(1/Px_1)//amount of information of zero level with base 2
Ix_2 = log2(1/Px_2)//amount of information of first level with base 2
Ix_1= log(1/Px_1)/log(2)//amount of information content with base 10
Ix_2= log(1/Px_2)/log(2)//amount of information content with base 10

//results
printf("\n\ni.Amount of information carried wrt to binary PCM 0 = %.2f bits",Ix_1);
printf("\n\nii.Amount of information carried wrt to binary PCM 1 = %.2f bits",Ix_2);
