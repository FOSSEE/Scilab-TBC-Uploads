//Example 2.15
printf("Example 2.15 \n")
A=1  // [sq m]
  x1=0.1    //m
  x2=0.04
  k1=0.7
  k2=0.48
  sigma=x1/(k1*A)+x2/(k2*A)   //K/W
  //Q=4.42*dT
  //Q=dT/sigma
  //with rockwool insulation added,Q_dash=0.75*Q
 k3=0.065     // W/(m.K)
  //Q_dash=dT/sigma+x3/k3*A
  //On solving Q and Q_dash we get
  x3=((1/(0.75*4.42))-sigma)*k3    //[m]
  x3=x3*1000     // [mm]
  printf("Thickness of rockwool insulation required=%f mm",x3)