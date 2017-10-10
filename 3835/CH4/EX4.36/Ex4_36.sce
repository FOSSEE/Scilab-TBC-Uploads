clear
//
//thevenin's theorem
//all the values are derived from the figures
z1=complex(8,-6)
z2=complex(0,5)
zth=(z1*z2)/(z1+z2)
printf("\n zth")
vth=complex(-17.71,141.54)
zload=complex(4,3)
I=vth/(zth+zload)
printf("\n I")
