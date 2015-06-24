//Chapter-4, Illustration 17, Page 148
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear
//Input data
Ta=20//   no of teeth on pinion A
Tb=25//   no of teeth on wheel B
Tc=50//   no of teeth on gear C
Td=60//   no of teeth on gear D
Te=60//  no of teeth on gear E
Na=200//   SPEED of the gear A
Nd=100//   speed of the gear D

//calculations
//(i)
//(5/6)x+y=0
//(5/4)x+y=200
A1=[(Tc/Td) 1
    (Tb/Ta) 1]//Coefficient matrix
B1=[0
    Na]//Constant matrix
X1=inv(A1)*B1//Variable matrix
Ne1=X1(2)-(Tc/Td)*X1(1)//    
T1=(-Ne1/Na)//     ratio of torques when D is fixed
//(ii)
//(5/4)x+y=200
//(5/6)x+y=100
A2=[(Tc/Td) 1
    (Tb/Ta) 1]//Coefficient matrix
B2=[Nd
    Na]//Constant matrix
X2=inv(A2)*B2//Variable matrix
Ne2=X2(2)-(Tc/Td)*X2(1)
T2=(-Ne2/Na)//      ratio of torques when D ratates at 100 rpm

//Output
printf('speed of E= %.2f rpm in clockwise direction\n speed of E in 2nd case(when D rotates at 100 rpm)= %d rpm in clockwise direction\n ratio of torques when D is fixed= %d \n ratio of torques when D ratates at 100 rpm= %d',Ne1,Ne2,T1,T2)

