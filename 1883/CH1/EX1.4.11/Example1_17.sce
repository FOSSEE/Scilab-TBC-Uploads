//Chapter-1,Example1_4_11,pg 1-37

D_4=0.4                                  //diameter of 4th dark ring

D_12=0.7                                 //diameter of 12th dark ring 

const=D_4^2/(4*4)                                 //assume (R*wavelength = const)  for 4th dark ring

D_20=sqrt(4*20*const)                             //For 20th dark ring 

printf('\nDiameter of 20th dark ring is   D20 = %.3f cm\n',D_20)
