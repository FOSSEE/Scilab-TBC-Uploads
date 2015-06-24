//Section-4,Example-2,Page no.-I.65
clc;
z_1=20/100                    //I/I_0=z_1
A_1=log10(1/z_1)
disp(A_1,'Absorbance')
x_1=2
C_1=4*10^-5
e=(A_1)/(C_1*x_1)          //e(epsilon)
disp (e,'Molar extinction coefficient(M^-1cm^-1)')
x_2=4
C_2=2*10^-5
A_2=e*C_2*x_2          //A2=log(I_0/I)
z_2=10^A_2     //z_2=(I_0/I)
z_3=1/z_2       //z_3=(I/I_0)
p_t=100*z_3
disp (p_t,'Percentage transmittancy')


