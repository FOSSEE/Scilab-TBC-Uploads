clc
clear
//input data
C1=600//Velocity of steam at exit from nozzle in m/s
U=120//Blade speed in m/s
a1=16//Nozzle angle in degree
b2=18//Discharge angle for first moving ring in degree 
a11=21//Discharge angle for the fixed ring in degree 
b22=35//Discharge angle for the second moving ring in degree
Wr=0.9//Blade velocity coefficient
m=1//Mass flow rate in kg/s

printf('\n\nThe scale of the velocity vector diagram is 1:50\n\nThe following values are obtained from the velocity vector diagram')

W1=485//Relative velocity at inlet for first stage in m/s
W2=Wr*W1//Relative velocity for first stage at exit in m/s
Wx1=460//Inlet whirl  velocity for first stage in m/s
Wx2=410//Exit whirl velocity for first stage  in m/s
Ca1=170//Inlet axial velocity for first stage  in m/s
Ca2=135//Exit axial velocity for first stage in m/s
C2=325//Exit velocity of the steam for first stage in m/s
b1=20//Blade inlet angle for first row of moving blade in degree
C11=Wr*C2//Steam velocity at inlet to second row of moving blades in m/s
W12=190//Relative velocity at inlet for second stage in m/s
W22=Wr*W12//Relative velocity at exit for second stage in m/s
Wx11=155//Inlet whirl velocity  for second stage in m/s
Wx22=140//Exit whirl velocity for second stage  in m/s
Ca11=110//Inlet axial velocity for second stage  in m/s
Ca22=100//Exit axial velocity for second stage in m/s
b11=35//Blade inlet angle for second row of moving blade in degree
dWx1=Wx1+Wx2//Driving force for first stage in m/s
dWx11=Wx11+Wx22//Driving force for second stage in m/s
dW=(dWx1+dWx11)*1//Total driving force for unit mass flow rate in N
AT1=Ca1-Ca2//Axial thrust for first stage in m/s
AT2=Ca11-Ca22//Axial thrust for second stage in m/s
AT=(AT1+AT2)*1//Total axial thrust for unit mass flow rate in N
DP=m*U*(dWx1+dWx11)*10^-3//Diagram power in kW
DE=(U*(dWx1+dWx11))/((C1^2)/2)//Diagram efficiency
MDE=(sind(90-a1))^2//Maximum  diagram efficiency

//output
printf('\n\n(a)\n    Blade inlet angle for first row of moving blade is %3.i degree\n    Blade inlet angle for second row of moving blade is %3i degree\n(b)\n    Driving force for first stage is %3i m/s\n    Driving force for second stage is %3i m/s\n    Total driving force for unit mass flow rate is %3i N\nTotal axial thrust for unit mass flow rate is %3i N\n(c)Diagram power is %3.1f kW\n(d)Diagram efficiency is %3.3f\n(e)Maximum  diagram efficiency is %3.3f',b1,b11,dWx1,dWx11,dW,AT,DP,DE,MDE)
