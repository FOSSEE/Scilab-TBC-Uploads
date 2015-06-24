//Example 9.4
//calculate the evaporator areas and the steam economy.
//given
Wf=6000     //kg/h, feed rate
ci=2        //%, initial concentration
cf=35       //%, final conc.
ft=50        //C,feed temp.
ssp=2       //bar abs, saturated steaam pr.
sep=0.0139  //bar abs, maintained temp. in second effect
h1=2000     //W/m^2 K,overall heat transfer coeffcient in 1st effect
h2=1500     //W/m^2 K, overall heat transfer coefficient in 2nd effect
cp=4.1      //kj/kg k,specific heat

//calculation
si=Wf*(ci/100) //kg/h, solid in
wi=5880      //kg/h, water in
Wp=si/(cf/100)  //kg/h product out
wo=Wp*(1-cf/100) //kg/h, water out with the product
ter=wi-wo       //kg/h, total evaporation rate

//boiling temp. in the first effect
T1=120       //C,Temprature
l_s1=2200    //kj/kg, latent heat
T2=12        //C,boiling point in second effect
l_s2=2470   // kj/kg  in second effect
  tatd=T1-T2    // C,tatd=dt1+dt2 =T1-T2  , total available temp. drop
//from eq. 9.20
  //h1*dt1=h2*dt2
  //solving above two equations by matrix
  A=[1,1;2000,-1500]
  C=[108;0]
 
  X=inv(A)*C
  
  dt1=X([1])
  dt2=X([2])
  t1=T1-dt1    //temp. of steam leaving the first effect
  t2=T2-dt2    //temp. of steam leaving second effect
//energy balance over the 1st effect, from eq.9.14
rt1=t1
  ef=cp*(ft-t1)   //kj/kg,enthalpy of feed
  i1=0
  lam_s1=2330     //kj/kg
  is1=lam_s1
  //Wf*ef+Ws*l_s=(Wf-Ws1)*i1+Ws1*is1
  //substituting we get,
  //Ws1=0.9442*Ws-253.4..........(1)
  //energy balance over second effect
  //from eq 9.15
 //(Wf-Ws1)*i1+Ws1*lam_s1=(Wf-Ws1-Ws2)*i2+Ws2*is2
  rt2=t2
  lam_s2=2470
  is2=lam_s2
  i2=0
  // substituting we get
  //Ws2=0.8404*Ws1+617.5............(2)
  //ter,Ws1+Ws2=5657...............(3)
  //solving by matrix method
  A=[0.9442,-1,0;0,0.8404,-1;0,1,1]
  B=[253.4;-617.5;5657]
  X=inv(A)*B
Ws=X([1])
  Ws1=X([2])
  Ws2=X([3])
  
  //evaporator area
  A1=Ws*l_s1/(h1*dt1)  //for 1st effect
  A2=Ws1*lam_s1/(h2*dt2)  //for second effect
  
  //revised calculation
  //taking
  dt1_=48
  dt2_=60
  T1_=T1-dt1_
  T2_=T2-dt2_
  ls1_=2335
  ls2_=2470
  // energy balance over first effect gives
  //Ws1=0.9422Ws-231.8.........(4)
  //energy balance over second effect gives
  //Ws2=0.8457Ws1+579.5......(5)
  //solving eq 3,4,5
  P=[0.9422,-1,0;0,0.8457,-1;0,1,1]
  Q=[231.8;-579.5;5657]
  Y=inv(P)*Q
  Ws_=Y([1])
  Ws1_=Y([2])
  Ws2_=Y([3])
  
  //eveporator area for 1st & 2nd effect in m^2
  A1_=Ws_*l_s1/(h1*dt1_)
  A2_=Ws1_*ls1_/(h2*dt2_)
  EA=(A1_+A2_)/2
  SE=(Ws1_+Ws2_)/Ws_
  printf("The evaporator area is %f square metre \n",EA);
  printf("Steam economy is %f",SE);
  
  