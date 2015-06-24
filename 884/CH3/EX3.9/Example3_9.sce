//empirical formula of a compound from percentage composition

clear;
clc;

printf("\t Example 3.9\n");

H=1.008;//molar mass of H, g
C=12.01;//molar mass of C, g
O=16;//molar mass of O, g

percentC=40.92;//percent of C
nC=percentC/C;

percentH=4.58;//percent of H
nH=percentH/H;

percentO=54.500;//percent of O
nO=percentO/O;

if(nC>nH) then// determining the smallest subscript
    small=nH;
else small=nC;
    if(small>nO) then
        small=nO;
    end
end;

nC=nC/small;//dividing by the smallest subscript
nH=nH/small;
nO=nO/small;
//the approximate values of these variables are to be multiplied by appropriate number to make it an integer by trial and error method
//in this case we need to multiply with 3 to get integer values
nC=nC*3;
nH=nH*3;
nO=nO*3;

printf("\t the empirical formula of ascorbic acid is : C%1.0f H%1.0f O%1.0f\n",nC,nH,nO);

//End
