clc
clear 
printf("example 2.28 page number 82\n\n")

//to find hardness of water

volume_NaCl=50    //in l
c_NaCl=5000       //in mg/l

m=volume_NaCl*c_NaCl;
equivalent_NaCl=50/58.5;

hardness=equivalent_NaCl*m;

printf("hardness of water = %f mg/l",hardness/1000)
