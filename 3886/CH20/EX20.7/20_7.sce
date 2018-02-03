//A flywheel
omega0=41.888  //rad/sec
omega=29.322  //rad/sec
t=120  //sec
//Kinematic equation gives
alpha=(29.3224-41.888)/(120)  //rad/sec^2
//Weight of flywheel
Wf=50000  //N
//Radius of gyration
k=1  //m
I=(50000/9.81)  //kg-m^2
//(1) Retarding torque acting on the flywheel Tr
Tr=5096.84*0.1047  //N-m
//(2) Change in K.E.
C.K.E=(5096.84*((41.888^2)-(27.322^2)))/(2)  //N-m  The answer provided in the textbook is wrong
//(3) Change in its angular momentum
C.A.M=5096.84*(41.888-29.322)  //N-sec
printf("\nRetarding torque acting on the flywheel Tr=%.3f N-m\nChange in K.E.=%.3f N-m\nChange in its angular momentum=%.3f N-sec",Tr,C.K.E,C.A.M)


