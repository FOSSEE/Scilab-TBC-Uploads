//chapter 5 example 2//
clc
clear
//hole concentration=Pn,minority carrier life time=Tr//
Br=7.21*(10^-10);
Pn=10^18;//in per cm cube//
Tr=((Br*Pn)^-1)*(10^9);//minority carrier life time//
printf("\n minority carrier life time=%f *(10^-9) sec \n",Tr);

