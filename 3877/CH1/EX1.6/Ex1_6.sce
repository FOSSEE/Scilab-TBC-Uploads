//Given
     N = 160 //Speed of driving shaft in rpm
     d = 18//distance between parallel shafts in mm
//calculation
     Omega = (2*%pi*N)/60//angular velocity in rad/s
     v = (Omega*d)/1000//sliding velocity in m/s
//Result
clc
printf('Angular Velocity is %f rad/s \n',Omega)
printf(' The maximum velocity of sliding is %f m/s \n',v)



