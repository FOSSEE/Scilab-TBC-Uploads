//Exalple 9.7
//Calculate the increase in evaporation capacity attainable
//also the % change in cost of concentrating a ton of feed.
//Given
Wf=3000        //kg/h,feed
  fc=8        //%, feed concentration
  pc=40       //% product concentration
  si=Wf*(fc/100)      //kg,solid in
  pr=si/(40/100)      //g/h, product rate
 ft=60          //C,feed temp.
  er=Wf-pr           //kg/h, evaporation rate
  cost=120000   //total cost per year
  p1=4.5       //bar, low pressure steam
  scpt=700        //per ton.  cost of steam
  cp=0.764        //  kcal/kg, specific heat
  
//from table 9.6
  eep=1        //atm existing evaporator pressure 
  oop=400000     // peryear ,other operatingcost
  oop_=600000     //per yr, for proposed condition
  wd=300         //days per year.working days
  wh=wd*24        //working hr
 
  //EXISTING OPERATING CONDITION 
  rt=0         //C,reference temp.
  ef=eep*(ft-rt)   //kcal/kg, enthalpy of feed
  pt=100     //C,product temp.
  i1=cp*(pt-rt)   //kcal/kg, enthalpy of soln
  is1=639       //kcal/kg,enthalpy of vapour generated at 1 atm (from steam table)
  l_s=496      //kcal/kg,latent heat of steam at 4.5 bar
  T=425      //K
  //heat balance
  Ws=(er*is1+pr*i1-Wf*ef)/l_s      //kg/h, steam required
  q=Ws*l_s       //ton/ hr,heat supplied
  x=q/(T-(pt+273))  //x=Ud*A
  //hourly cost
  sc=Ws/1000*(scpt)    // /perh, steam cost
  lc=100           //per h,labour cost
  oc=oop/(wh)     // per h,othe cost
  tc=sc+lc+oc  //total cost
  C=tc/(Wf/1000)     // per ton,cost per ton of feed
  
  //PROPOSED OPERATING CONDITION
  bpl=320        //K,boiling point of liquid
  dt=T-bpl
  q_=x*dt     //kcal/h,rate of heat supply
  sr=q_/l_s   //steam rate ton per hr
 pt_=47      //C,product temp .
  ep=cp*(pt_-rt)    //kcal/kg. enthalpy of product
  ev=618        //kcal/kg, enthalpy of vapour generated
  //heat balance
  //24Wf_-582Ws1_=2825000  ..........(1)
  //material balance
  // 4Wf_-5Ws1_=0  .............(2)
  //solving by matrix method
  a=[24,-582;4,-5]
  b=[-2825000;0]
  x_=inv(a)*b
  Wf_=x_([1])
  Ws1_=x_([2])
  ic=(Wf_-Wf)/Wf
printf("The increase in evaporation capacity ic %f percentage \n",ic*100)
  sr_=Ws1_/1000    //ton per hr ,steam rate 
  //hourly cost
  sc_=Ws1_*scpt   //steam cost
  lc_=200      //labour cost rs.200/ h
  oc_=oop_/wh  // other cost
  tc_=sc_/1000+lc_+oc_
  C_=tc_/(Wf_/1000)  //cost per ton of feed
  ps=(C-C_)/C
  printf(" The percentage change in the cost of concentrating a ton of feed is %f percentage",ps*100)