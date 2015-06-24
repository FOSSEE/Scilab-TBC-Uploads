//Example2.17
T1=523   //[K]
  T2=323   //[K]
  r1=0.05   //[m]
  r2=0.055   //[m]
  r3=0.105   //[m]
  r4=0.155   //[m]
  k1=50      //[W/(m.K)]
  k2=0.06    //[W/(m.K)]
  k3=0.12    //W/(m.K)
  //CASE 1
  Q_by_L1=2*%pi*(T1-T2)/((log(r2/r1))/k1+(log(r3/r2))/k2+(log(r4/r3))/k3)   //[W/m]
  printf("Heat loss=%f W/m",Q_by_L1)
  //Case 2
  Q_by_L2=2*%pi*(T1-T2)/((log(r2/r1))/k1+(log(r3/r2))/k3+(log(r4/r3))/k2)
 perct=(Q_by_L2-Q_by_L1)*100/Q_by_L1
  printf("If order is changed then heat loss=%f W/m",Q_by_L2) 
  printf("\n loss of heat is increased by %f percent by putting material with higher thermal conductivity near the pipe surface",perct)