//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.12(PAGENO 495)");
//given
n = 2*10^6//elements od black and white TV picture
m = 16//brightness levels of black and white TV picture
o = 32//repeated rate of pictures per second 

//calculations
Px_i = 1/m//probability of  brightness levels of picture
H_X = 0;
for  i= 1:16
       H_Xi = (-1/(1/Px_i))*log2(1/(1/Px_i));
       H_X = H_X +H_Xi;
end
 r = n*o//rate of symbols generated 
 R = r*H_X//average rate of information convyed 
 
 //results
printf("\n\ni. Average rate of information convyed = %.2f bits/seconds",R)
