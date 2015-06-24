//Ceramic Crystal structure prediction

clear;
clc;

printf("\tExample 12.2\n");

r_Fe=0.077;  // in nm Radius of iron cation Fe++

r_O=0.140;  //in nm  Radius of Oxygen anion O--

ratio=r_Fe/r_O;

printf("\nRatio is : %0.3f",ratio);

if ratio>0.414 & ratio<0.732 then
    printf("\nCo-ordinaton no. is 6");
    printf("\nStructure is Rock Salt type\n");
end