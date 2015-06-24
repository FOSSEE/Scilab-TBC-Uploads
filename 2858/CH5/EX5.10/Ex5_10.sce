//example 5.10
clc; funcprot(0);
Cc=0.32;
Hc=2.5;
eo=0.8;
sigmao=2.5*16.5+0.5*(17.5-9.81)+1.25*(16-9.81);
m1=[2, 2, 2];
z=[2, 3.25, 4.5];
n1=[4, 6.5, 9];
Ic=[0.19, 0.085, 0.045];
Dsigma=[28.5, 12.75, 6.75];//deltasigma
printf("m1\t z(m)\t n1\t Ic\t Dsigma \n");
for i=1:3
    printf("%.2f\t %.2f\t %.2f\t %.2f\t %.2f\n",m1(i),z(i),n1(i),Ic(i),Dsigma(i));
end
Dsigmaav=1/6*(Dsigma(1)+4*Dsigma(2)+Dsigma(3));
Sc=Cc*Hc/(1+eo)*log10((sigmao+Dsigmaav)/sigmao);
disp(Sc*1000,"settlement in mm")
//partb
B=1;
L=2;
z=0.5+1.5;
B=B+z;
L=L+z;
A=0.6;
//from table
kcr=0.36;
Sep=kcr*Sc;
disp(Sep*1000,"settlement in mm");

