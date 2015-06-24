//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.1(PAGENO 488)");
//given

Px_1=1/2;//probability 1
Px_2=1/4;//probability 2
Px_3=1/8;//probability 3
Px_4=1/8;//probability 4

//calculations
Ix_1 = log2(1/(Px_1))//information content in first probability
Ix_2 = log2(1/(Px_2))//information content in first probability
Ix_3 = log2(1/(Px_3))//information content in first probability
Ix_4 = log2(1/(Px_3))//information content in first probability

//results
printf("\n\ni. Information content of first symbol = %.2f bit",Ix_1);
printf("\n\nii. Information content of second symbol = %.2f bits",Ix_2);
printf("\n\niii. Information content of third  symbol = %.2f bits",Ix_3);
printf("\n\niV. Information content of fourth symbol = %.2f bits",Ix_4);
