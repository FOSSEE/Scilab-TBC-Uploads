//Exa 4.18
clc;
clear;
close;
//given data :
//Side lobe level below main lobe
disp("Side lobe level below main lobe : ")
SideLobe=20;//in dB
r=10^(SideLobe/20);//
disp(r,"r=") ;
//No. of elements are 5, n=5
disp("No. of elements are 5, n=5 :");
disp("Tchebyscheff polynomials of degree (n-1) is");
disp("5-1=4");
disp("T4(xo)=r");
disp("8*xo^4-8*xo^2+1=10");
disp("By using alternate formula, we get");
m=4;
r=10;
xo=(1/2)*[{r+sqrt(r^2-1)}^(1/m)+{r-sqrt(r^2-1)}^(1/m)]
disp(xo,"xo=");
disp("E5=T4(xo)")
disp("E5=ao*z+a1*(2*z^2-1)+a2*(8*z^4-8*z^2+1)");
disp("We Know that : z=x/xo, E5=T4*xo");
disp("ao=a1*(2*(x/xo)^2-1)+a2*[8*(x/xo)^4-8*(x/xo)^2+1]=8*x^4-8*x^2+1");
disp("By comparing the term we have : ");
disp("a2=xo^4  a1=4*a2-4*xo^2  ao=1+a1-a2 ")
a2=xo^4;
a1=4*a2-4*xo^2;
ao=1+a1-a2;
disp("And therefore the 5 elements array is given by : ");
disp(string(a2)+"  "+string(a1)+"  "+string(2*ao)+"  "+string(a1)+"  "+string(a2));