//chapter 8
//example 8.9
//page 330
printf("\n")
printf("given")
R1=30*10^3;R2=30*10^3;rs=30*10^3;f2=40*10^3;f1=100;k=1.37*10^-23;R=10*10^3;Av=600;Ri=3*10^3;
Rb=(R1*R2)/(R1+R2);
Rg=(rs*Rb)/(rs+Rb);
T=(273+25)
B=f2-f1;
en=sqrt(4*k*T*B*R)
eni=en*((Ri/(Ri+Rg)))
eno=(Av*eni)*10^6;
printf("noise output voltage is %duV\n",eno)