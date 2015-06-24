//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 4
//Radio Receiver
clear all;
clc;
printf("EXAMPLE 4.5(PAGENO 152)");

//given
IF = 455*10^3//intermediate frequency in hertz
f_s = 900*10^3//signal frequency in hertz
Q = 80//quality factor

//calculations
f_0 = f_s + IF//local oscillator frequency
f_si = f_s + 2* IF//image frequency
p = (f_si/f_s)-(f_s/f_si)
a = sqrt(1+(Q*p)^2)//image frequency rejectio ratio

//results
printf("\n\n(i)Local oscillator frequency = %.2f Hz",f_0);
printf("\n\n(ii)Image frequency = %.2f Hz",f_si);
printf("\n\n(iii)Image frequency rejection ratio = %.2f",a);
printf("\n\n(iv)Note:Their is mistake in textbook in the calculation of image frequency")
