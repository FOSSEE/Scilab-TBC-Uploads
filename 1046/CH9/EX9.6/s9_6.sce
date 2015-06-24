//Example  9.6
//Calculate the heat transfer area required
//(assuming equal area for the three effects)
//Rate of steam consumption, Steam economy

//given
fc=9.5      //%,feed concentration
  pc=50     //%, product conc.
  ft=40     // C,feed temp.
  er=2000      //kg NaOH/h, evaporation rate
 vp=714     //mm Hg, vaccum pr. in last effect
  //heat transfer coefficients, W/m^2 C
  h1=6000    //for first effect
  h2=3500    //for second effect
  h3=2500    //for third effect
  
  //calculatiin
  Wf=er/(fc/100)  //kg/h, 2 tons NaOH per hour, feed rate
  Wp=er/(pc/100)  //kg/h, product rate
  ter=Wf-Wp  //kg/h, total evaporation  rate
  //steam
  p=3.3       //bar,assumed saturated
  //from steam table
  Ts=137      //C,temp.
  l_s=2153    //kj/kg, latent heat
  pl=760-vp   //mm Hg,pressure in the last effect
  bp=37       //C,boiling point of water
  //refer to fig. 9.24
  attd=Ts-bp  //C,apparent total temp. drop
  //let assume the following evaporation rate for three effects in kg/h
  ev1=5600
  ev2=5680
  ev3=5773
  //conc. in three effects
  c1=er/(Wf-ev1)
  c2=er/(Wf-ev1-ev2)
  c3=0.5   //given
  //boiling point elevations in three effects in C
  bpe1=3.5
  bpe2=8
  bpe3=39
  attda=attd-(bpe1+bpe2+bpe3)  //actual total temp. drop available
  //temp. drop in three effects
  //from eq. 9.23
  dt1=attda*((1/h1)/((1/h1)+(1/h2)+(1/h3)))
  dt2=attda*((1/h2)/((1/h1)+(1/h2)+(1/h3)))
  dt3=attda*((1/h3)/((1/h1)+(1/h2)+(1/h3)))
  
  //from table 9.4
  //enthalpy of solution in three effects in  kj/kg
  i1=486
  i2=385
  i3=460
  //enthalpy of vapour generated for three effects in kj/kg
  is1=2729
  is2=2691
  is3=2646
  //Enthalpy of condensate over effect 1,2,3 in kj/kg
  il1=0
  il2=519
  il3=418
  //Enthalpy balance over effect 1
  ef=145      //kj/kg,enthalpy of feed
  //from energy balance eq.
  //Ws1=0.96Ws-3200......(1)
  //enthalpy balanc over effect 2
  //Ws2=0.9146Ws1+922...........(2)
  //enthalpy balanc over effet 3
  //Ws3=1.073Ws2+0.0343Ws1-722........(3)
  //ter=Ws1+Ws2+Ws3=17053..........(4)
  
  //Solving above four eqns by matrix
  A=[0.96,-1,0,0;0,0.9146,-1,0;0,0.0343,1.073,-1;0,1,1,1]
  B=[3200;-922;722;17053]
  X=inv(A)*B
  Ws=X([1])
  Ws1=X([2])
  Ws2=X([3])
  Ws3=X([4])
  
  //calculation of heat transfer areas iver effect 1, 2 ,3
  A1=Ws*l_s*10^3/(h1*dt1*3600)
  A2=Ws1*(is1-il2)*10^3/(h2*dt2*3600)
  A3=Ws2*(is2-il3)*10^3/(h3*dt3*3600)
  
  //Revised dt
  avar=(A1+A2+A3)/3
  dt1_=(A1/avar)*dt1
  dt2_=(A2/avar)*dt2
  dt3_=attda-dt1_-dt2_
  
  //from table 9.5
  //enthalpy of vapour generated over effect 1,2,3 in kj/kg
  is1_=2720
  is2_=2685
  is3_=2646
  //enthalpy of soln on 1,2,3 in kj/kg
  i1_=470
  i2_=380
  i3_=460
  //enthalpy of condensate over effect 1 ,2,3 in kj/kg
  il1_=0
  il2_=513
  il3_=412
  //enthalpy balance ove effect 1,2,3 gives
  Ws_=8854
  Ws1_=5432
  Ws2_=5812
  Ws3_=5809
  //revised heat transfer areas for effect 1 ,2,3 in m^2
  A1_=Ws_*l_s*1000/(h1*dt1_*3600)
  A2_=Ws1_*(is1_-il2_)*10^3/(h2*dt2_*3600)
  A3_=Ws2_*(is2_-il3_)*10^3/(h3*22.5*3600)
  avar_=(A1_+A2_+A3_)/3
  SE=ter/Ws_
  
  printf("The areas are now reasonably close  \n")
  printf("Steam Rate is % f Kg/h \n",Ws_)
  printf("Steam economy is %f",SE)
  
  
