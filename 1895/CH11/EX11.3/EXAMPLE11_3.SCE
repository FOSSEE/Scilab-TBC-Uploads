//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.3(PAGENO 489)");
//given
//since there are only two binary levels i.e. 1 or 0. Since, these two binary levels occur with equal             likelihood of occurrence will be
Px_1 = 1/2//probability of zero level
Px_2 = 1/2//probability of first level

//calculations
Ix_1 = log2(1/Px_1)//amount of information of zero level with base 2
Ix_2 = log2(1/Px_2)//amount of information of first level with base 2
Ix_1= log(1/Px_1)/log(2)//amount of information content with base 10
Ix_2 = Ix_1 

//result
printf("\n\ni.Amount of information content wrt binary PCM 0 =  %.2f bit",Ix_1)
printf("\n\nii.Amount of information content wrt binary PCM 1 =  %.2f bit",Ix_2)
