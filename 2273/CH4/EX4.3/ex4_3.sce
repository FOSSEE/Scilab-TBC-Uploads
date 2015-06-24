//Calculate GMR pf ACSR conductor
clear;
clc;
//soltion
//given
r=3;//mm//radius of the conductor
re=r*exp(-1/4);
d11=re;
d12=2*r//=d17=d16;
d14=4*r;
d13=sqrt(d14^2-d12^2);//=d15
Ds1=(d11*d12*d13*d14*d13*d12*d12);
Ds1_=Ds1/(r^7);
printf("Ds1= (%f)^(1/7)*r\n",Ds1_);
d71=2*r;//=d72=d73=d74=d75=d76
Ds7=(d71^6*re);
Ds7_=Ds7/(r^7);
printf("Ds7= (%f)^(1/7)*r\n",Ds7_);
Ds=(Ds1^6*Ds7)^(1/49);
printf("GMR= %.4fmm",Ds);
