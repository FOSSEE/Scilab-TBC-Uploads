//chapter 4 Ex 39

clc;
clear;
close;
hens=50; goats=45; camels=8; numFeet=224;
numKeepers=numFeet-((goats*4+camels*4+hens*2)-(hens+goats+camels));
mprintf("The total number of keepers are %d",numKeepers);
