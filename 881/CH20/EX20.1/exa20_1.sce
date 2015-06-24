clc;
//Example 20.1
//Page No 768

//solution

N1=3;
N2=991;

//(a)

disp("(a)The transmit and receive carrier frequencies");

ft=((0.03*N1)+825);

disp('MHz',ft,"transmit ft = ");

fr=ft+45;

disp('MHz',fr,"receive fr = ");

//(b)

disp("(b)The transmit and receive carrier frequencies for channel 991 ");

Ft=((0.03*(N2-1023))+825);

disp('MHz',Ft,"transmit ft = ");

Fr=Ft+45;

disp('MHz',Fr,"receive fr = ");
