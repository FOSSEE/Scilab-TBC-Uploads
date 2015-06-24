
clear ;
clc;

printf("\t Example 10.12\n");
T1=291;          //temp.of sky,K   
T2=308;        //temp of air,K
e1=0.9;            //emissivity 0f black paint
h=8;            //heat transfer coefficient,W/(m^2*K)
P=600 ;         //heat flux,W/m^2

//heat loss from the roof to the inside of the barn will lower the roof temp., since we dont have enough information to evaluate the loss, we can make an upper bound on roof temp. by assuming that no heat is transferred to the interior.

x=poly([0],'x');
x=roots(8*(e1*5.67*10^-8*(x^4-T1^4)+(x-T2)-e1*P));

//for white acrylic paint, by using table, e=0.9 and absorptivity is 0.26,Troof 


T=poly([0],'T');
T=roots(8*(e1*5.67*10^-8*(T^4-T1^4)+(T-T2)-0.26*P));
Tn=T(2)+0.6

printf("\t temp. of the root is :%.1f C or 312 K ,the white painted roof is only a few degrees warmer than the air.\n",Tn);
//end


