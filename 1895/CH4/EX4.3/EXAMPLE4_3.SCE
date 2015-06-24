//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 4
//Radio Receiver
clear all;
clc;
printf("EXAMPLE 4.3(PAGENO 151)");
//given

a1 = 130.5//rejection ratio
f_s = 10*10^3//incoming frequency
printf("from fig 4.8 from t/b we can write that")

//calculations
//first case
alpha = 130.5//from problem 4.2 of first case
alpha2 = 15.72//from problem 4.2 of second case
alpha1 = alpha/alpha2//rejection ratio ofgiven RF amplifer
p1 =.174//from problem 4.2 of second case
Q = (sqrt(alpha1^2 - 1)/p1)//quality factor
//second case
p2 = 1.45//from problem 4.2 of second case
f_si =1860*10^3//from problem 4.2 of second case
f_i = 950*10^3//incoming frequency
f_i1 = 10*10^6//good image frequency
f_si1 = (f_si*f_i1)/f_i';//mage frequency
f_i2 = (f_si1 - f_i1)/2//new intermediate frequency

//results
printf("\n\n(i)Quality factor =%.2f ",Q);
printf("\n\n(ii)New intermediate frequency =%.4f Hz",f_i2);
