//Moment of inertia of I section
//Refer fig. 9.36
A1=200*9  //mm^2
A2=(250-9*2)*6.7  //mm^2
A3=200*9  //mm^2
A=A1+A2+A3  //mm^2
Ixx=((200*9^3)/12)+(1800*120.5^2)+((6.7*232^3)/12)+(0)+((200*9^3)/12)+(1800*120.5^2)  //mm^4
Iyy=((9*200^3)/12)+((232*6.7^3)/12)+((9*200^3)/12)  //mm^4
Izz=Ixx+Iyy  //mm^4
printf("\nIxx=%.2f mm^4\nIyy=%.2f mm^4\nIzz=%.2f mm^4",Ixx,Iyy,Izz)
//The answers vary due to round off error
