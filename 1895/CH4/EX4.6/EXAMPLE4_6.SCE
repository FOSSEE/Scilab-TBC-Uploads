//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 4
//Radio Receiver
clear all;
clc;
printf("EXAMPLE 4.6(PAGENO 153)");
//given
Q = 125//quality factor

//calculations
//first case
IF1 = 465*10^3//intermediate frequency
f_s1 = 1*10^6//incoming frequency for first case in hertz
f_s2 = 30*10^6//second incoming frequency for first case in hertz
f_si1 = f_s1 + 2*IF1//image frequency for incoming frequency 1MHz for first case
f_si2 = f_s2 + 2*IF1//image frequency for incoming frequency 30MHz for first case
p1 = (f_si1/f_s1)-(f_s1/f_si1);
p2 = (f_si2/f_s2)-(f_s2/f_si2);
alpha1 = sqrt(1+(Q*p1)^2);//rejection ratio at 1MHz incoming frequency
alpha2 = sqrt(1+(Q*p2)^2);//rejection ratio at 30MHz incoming frequency
//second case
f_s3 = 1*10^6//incoming frequency for second case in hertz
f_si3 = (f_si1*f_s2)/f_s3//image  frequency
IF2 =  (f_si3-f_s2)/2//intermediate frequency

//results
printf("\n\n(i)a.Image frequency for 1MHz incoming frequency = %.2f Hz",f_si1);
printf("\n\n   b.Rejection ratio for 1MHz incoming frequency = %.2f",alpha1);
printf("\n\n   c.Image frequency for 30MHz incoming frequency = %.2f Hz",f_si2);
printf("\n\n   d.Rejection ratio for 30MHz incoming frequency = %.2f",alpha2);
printf("\n\n(ii)intermediate frequency for second case = %.2f Hz",IF2);
