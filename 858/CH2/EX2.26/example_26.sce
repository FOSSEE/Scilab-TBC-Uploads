clc
clear 
printf("example 2.26 page number 80\n\n")

//to find hardness of water
m_MgSO4=90   //in ppm
MgSO4_parts=120;
CaCO3_parts=100;

hardness=(CaCO3_parts/MgSO4_parts)*m_MgSO4;

printf("hardness of water = %f mg/l",hardness)
