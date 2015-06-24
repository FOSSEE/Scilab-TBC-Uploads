//Inilization of variables
W=2000 //N
Lab=2 //m //length of the member from the vertical to the 1st load of 2000 N
Lac=5 //m //length of the member from the vertical to the 2nd load of 2000 N
Lpq=3.5 //m
//Calculations
Rq=((W*Lab)+(W*Lac))/Lpq //N //take moment abt. pt P
Xp=Rq //N //sum Fx=0
Yp=2*W //N //sum Fy=0
Rp=sqrt(Xp^2+Yp^2) //N
//Resuts
clc
printf('The reaction at P is %f N \n',Rp)
printf('The reaction at Q is %f N \n',Rq)
