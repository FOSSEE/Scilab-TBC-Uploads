//Variable declaration

//port 2 open circuited,port 1 excited
z11= complex(1075,1075)                   //as z11=V1/I1=(1.52<45)/(10**-3<0)=1075+1075j
z21 = complex(2022,-1075)                   //as z21=V2/I1=(2.29<-28)/(10**-3<0)=2022+1075j

//port 1 open circuited and port 2 excited
z12= complex(0,-1075)                       //as z12=V1/I2=(1.075<-90)/(10**3<0)=-1075j
z22= complex(751,-1073)                    //as z22=V2/I2=(1.31<-55)/(10**-3<0)=751-j1073

//Calculations
z=z11-z12                        //parameters with reference to circuit
z1=z22-z12
z2=z21-z12

//Results
printf ("z11-z12(z) is ")
disp(z)
printf ("z22-z12(z1) is")
disp(z1)
printf ("z21-z12(z2) is")
disp(z2)
