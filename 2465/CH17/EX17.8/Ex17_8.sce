//Chapter-17,Example 8,Page 371
clc();
close();

strength = 10*0.85/9    //strength of EDTA

//1000 ml EDTA solution == 1 g CaCO3

//for 20 ml EDTA solution

amnt= 20*strength/1000

//50 ml smple of water contains amnt CaCO3

hard= amnt*10^6/50    //hardness of water 

printf("the hardness of water is = %.2f ppm", hard)
