clc
s=10  //angle of slope in rad
HA=100*(1/(cosd(s))-1) //Hypotenusal allowance in m
HA1=HA*0.201
printf('a)Hypotenusl allowance = %f \n',HA1 )

k= atan(0.2)
HA2=100*(1/(cos(k))-1)
HA3=HA2*0.201
printf(' b)Hypotenusl allowance = %f m',HA3 )


