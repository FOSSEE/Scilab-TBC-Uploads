//Section-4,Example-3,Page no.-I.66
//To calculate percentage of light absorbed by the given solution.
z_1=40/100              //z_1=(I/I_0)
x=2
C_1=20
y=(log10(100/40)/(x*C_1))     //y=e/M
C_2=40
z_2=y*C_2*x              //z_2=log(I_0/I_t)=log(z_3)where z_3=(I_0/I_t)
z_3=10^z_2
I_t=(100/z_3)
p_l=(100-I_t)
disp (p_l,'Percentage of light absorbed')
