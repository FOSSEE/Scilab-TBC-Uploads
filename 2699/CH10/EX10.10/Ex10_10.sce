//EX10_10 PG-10.48
clc
printf("Refer to the figure-10.43 shown\n ")
//A is grounded so B is virtual ground
//Vb=Va=0
Vb=0;
R1=1e3;
R2=5e3;
R3=5e3;
R4=100;
printf("\n Vb=Va=0  ................(1)")
printf("\n Vb=0 \n I1=(Vin-Vb)/R1=Vin/R1 \n I1=(Vb-Vx)/R2=-Vx/R2 \n \n   Vin/Rf=-Vx/R2")
printf("\n =>Vx=-R2/R1*Vin........(2) \n \n now Vx=I2*R4 and (I1-I2)=(Vx-Vo)/R3 \n")
printf(" =>I2=Vx/R4 and I1-Vx/R4=(Vx-Vo)/R3 \n Therefore \n Vin/R1-Vx/R4=(Vx-Vo)/R3 ....")
printf(".......using I1=Vin/R1 \n Vin/R1-Vx(1/R4+1/R3)=-Vo/R3 \n \n ")
printf("Vin/R1-(-R2/R1)*Vin*(1/R4+1/R3)=-Vo/R3 ........using (2) \n")
printf(" Vin*(1/R1+R2/R1*(1/R4+1/R3))=-Vo/R3 \n \n ")                 
printf("Vin=-(R1*R4/(R3*R4+R2*R3+R2*R4))*Vo \n \n")
printf(" Acl=Vo/Vin=-(R3*R4+R2*R3+R2*R4)/(R1*R4) \n")
Acl=-(R3*R4+R2*R3+R2*R4)/(R1*R4);
printf("\n closed loop gain Acl=%.0f \n",Acl)
Acl=abs(Acl);
Rf=R1*Acl;//equivalent feedback resistance
printf("\n equivalent feedback resistance Rf= %.0f kohm ",Rf*1e-3)
