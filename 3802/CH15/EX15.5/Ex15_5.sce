//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex15_5.sce

clc;
clear;
I=25;
V=230;
l=45;
d=(0.02*V)+1; //Permissible voltage drop
//Referring table 15.10,
d1=(l/3.4)*(I/27);     //voltage for selected values from the table
if (d<d1) then
    I_refer=43;
    l_refer=5.4;
    A=16;
    d2=(l/l_refer)*(I/I_refer);
else
    d1=d2
end

printf("\n Voltage drop=%1.3f V \n",d2)
printf("\n Size of the conductor=%d mm^2 \n",A)
