//chapter 16
//example 16.3
//page 678
printf("\n")
printf("given")
vo=8;f=100*10^3;
disp(" hartley oscillator")
Vcc=vo+1
Xl2=1*10^3;
L2=Xl2/(2*3.14*f)
L2=1.5*10^-3;//use standard value
L1=L2/10
Lt=L1+L2//(assuming M=0)
C1=1/(4*(3.14^2)*(f^2)*Lt)
C1=1500*10^-12;//use 1500pF with aadditional parallel capacitance if necessary
//C1>>stray capacitance
Xl1=2*3.14*f*L1//R1>>Xl1
R1=1*10^3;
Acl=L2/L1
R2=Acl*R1
R3=(R1*R2)/(R1+R2)
disp("full power bandwidth ")
f2=Acl*f
SR=2*3.14*f*vo