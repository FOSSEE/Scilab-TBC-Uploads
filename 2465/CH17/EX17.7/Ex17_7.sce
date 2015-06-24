//Chapter-17,Example 7,Page 371
clc();
close();

v= 150    //volume of NaCl 

conc = 150   //concentration of NaCl

amnt =v*conc *100/117    //amnt of NaCl

hard = 600   //hardness of water

vol= amnt*1000/hard

printf("the volume of water is = %.2f litres",vol)

//calculation mistake in textbook
