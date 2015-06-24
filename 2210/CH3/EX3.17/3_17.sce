//Chapter 3, Prblem 17, figure 3.34
clc
funcprot(0)
// [R1, Theta1] = z2p(A1) - Display polar form of complex matrix.
function [R1, Theta1] = z2p(A1)
     Theta1 = atan(imag(A1),real(A1))*180/%pi;
     R1=sqrt(real(A1)^2+imag(A1)^2)
endfunction


//from figure 3.34
zo=50                       //in ohm
zl=50                       //in ohm
r1=30
zai=%i*20
za=(r1*zo)/(r1+zo)
z1=za+zai
s11=(z1-zo)/(z1+zo)
z2=(zo+zai)*r1/(zo+zai+r1)
s22=(z2-zo)/(z2+zo)
s21=za*2/(za+(zo+zai))
s12=zo*0.75/(za+zo+zai)


[s11m,s11a]=z2p(s11)
[s22m,s22a]=z2p(s22)
[s21m,s21a]=z2p(s21)
[s12m,s12a]=z2p(s12)

ret_loss=-20*log10(s11m)
ins_loss=-20*log10(s21m)

printf("(a) S parameters is , \n")
printf("s11 (magnitude) = %.3f \n\t(angle) = %.2f degree\n\n",s11m,s11a)
printf("s12 (magnitude) = %.3f \n\t(angle) = %.2f degree\n\n",s12m,s12a)
printf("s21 (magnitude) = %.3f \n\t(angle) = %.2f degree\n\n",s21m,s21a)
printf("s22 (magnitude) = %.3f \n\t(angle) = %.2f degree\n\n",s22m,s22a)
printf("(b) Return loss = %.3f dB\n\n",ret_loss)
printf("(c) Insertion loss = %.3f dB\n\n",ins_loss)
