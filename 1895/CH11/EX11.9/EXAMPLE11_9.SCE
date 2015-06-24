//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.9(PAGENO 492)");
//given
Px_1 = .4//probability of first symbol
Px_2 = .3//probability of second symbol
Px_3 = .2//probability of third symbol
Px_4 = .1//probability of fourth symbol

//calculations
H_X = -Px_1*log2(Px_1)-Px_2*log2(Px_2)-Px_3*log2(Px_3)-Px_4*log2(Px_4);//entropy
Px1x2x1x3 = Px_1*Px_2*Px_1*Px_3;//product of probabilities
Ix1x2x1x3 =-log2(Px1x2x1x3);//information of four symbols
Px4x3x3x2 = Px_4*Px_3*Px_3*Px_2;//product of probabilities
Ix4x3x3x2 = -log2(Px4x3x3x2);//information of four symbols

//results
printf("\n\ni.Entorpy = %.2f bits/symbol",H_X);
printf("\n\nii.Amount of information contained in x1x2x1x3 = %.2f bits/symbol",Ix1x2x1x3);
printf("\nThus,Ix1x2x1x3 < 7.4[=4*H_X]bits/symbol")
printf("\n\niii.Amount of information contained in x4x3x3x2 =%.2f bits/symbol",Ix4x3x3x2);
printf("\nThus we conclude that\nIx4x3x3x2 > 7.4[=4*H_X]bits/symbol")
