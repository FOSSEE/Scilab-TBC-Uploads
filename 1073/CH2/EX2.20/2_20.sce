//Example 2.20
//Given
//for clay
k1=0.533    //[W/(m.K)]
//for red brick
k2=0.7      //[W/m.K]
//Case 1
  A=1     //Area
  x1=0.125    //[m]
  x2=0.5      //[m]
  //Resistances
  r1=x1/(k1*A) //Res of fire clay [K/W]
  r2=x2/(k2*A)  //Res of red brick[K/W]
  r=r1+r2
  //Temperatures
  T1=1373    //[K]
  T2=323     //[K]
  Q=(T1-T2)/r //[W/sq m]
  Tdash=T1-Q*r1  //[K]
//Case2
 // Heat loss must remain  unchanged,Thickness of red brick also reduces to its half
  x3=x2/2   //[m]
  r3=x3/(k2*A)  //[K/W]
  Tdd= T2+(Q*r3)    //[K]
  //Thickness of diatomite be x2,km be mean conductivity
  Tm=(Tdash+Tdd)/2   //[K]
  km=0.113+(0.00016*Tm)  //[W/(m.K]
  x2=km*A*(Tdash-Tdd)/Q  //[m]
  x2=x2*1000      //[mm]
  printf("Thickness of diatomite layer=%f mm",x2)
  