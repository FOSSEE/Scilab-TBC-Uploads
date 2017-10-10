clear
//
//case a
//given
zl=5 //load impedanc with an angle of 36.87 degrees
vl=400 //line voltage
il=46.19
va=400/3**0.5 //phase voltage
ia=va/zl  //line current with an angle of -36.87 degrees
//ib and ic are also the same values with changes in in their angles
//case b
//cos(-36.87)=0.8 lagging
printf("\n power factor =0.8")
//case c
p=3**0.5*vl*il*0.8 //power where 0.8 is power factor
printf("\n p= %0.2f  KW",p)
//case d
q=3**0.5*vl*il*0.6 //where 0.6 is sin(36.87) and q is reactive volt ampere
printf("\n q= %0.2f  Kvar",q)
//case e
t=3**0.5*vl*il //total volt ampere
printf("\n t= %0.0f  KVA",t)
