//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 4
//Radio Receiver
clear all;
clc;
printf("EXAMPLE 4.1(PAGENO 150)");

//given data
Q = 100//quality factor
f_i = 455*10^3//intermediate frequency

//calculations
//first case
f_s = 1000*10^3//incoming frequecy of first case
f_si = f_s + 2*f_i//image frequency of first case
p = (f_si/f_s) - (f_s/f_si);
alpha = sqrt(1+(Q^2*p^2))//rejection ratio of first case
//second case
f_s1 = 25*10^6//incoming frequecy of second case
f_si1 = f_s1+ 2*f_i//image frequency of second case
p1 = ((f_si1/f_s1) - (f_s1/f_si1)); 
alpha1 = sqrt(1+(Q^2*p1^2))//rejection ratio of second  case

//results
printf("\n\n(i)a.Image frequency of first case = %.2fHz",f_si);
printf("\n\n   b.Rejection ratio of first case = %.2f",alpha);
printf("\n\n (ii)a.Image frequency of second case = %.2fHz",f_si1);
printf("\n\n     b.Rejection ratio of second case = %.2f",alpha1);
printf("\n\nNote: Their is mistake in textbook  in the calculation of rejection ratio")
