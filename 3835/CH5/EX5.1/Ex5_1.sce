clear
//
//given
vl=400 //line voltage
va=vl/sqrt(3)
vb=230.94  //angle(-120)
vc=230.94  //angle(-240)
//case a
//the line currents are given by
ia=12000/230.94  //with angle 0
ib=10000/230.94  //with angle 120
ic=8000/230.94   //with angle 240
printf("\n ia= %0.3f  A",ia)
printf("\n ib= %0.5f  A",ib)
printf("\n ic= %0.5f  A",ic)
//case b
//IN=ia+ib+ic
//ia,ib and ic are phase currents hence contain with angles they are in the form sin(angle)+icos(angle)
//IN=51.96*(sin(0)+i*cos(0))+43.3*(sin(120)+i*cos(120))+34.64*(sin(240)+i*cos(240))
//IN=51.96+(-21.65+i*37.5)+34.64*(-0.5-i*0.866)
//12.99+i*7.5 on which the sin+icos=sin**2+cos**2 operation is performed
//therefore  
IN=15 //at angle 30
printf("\n IN= %0.1f  A",IN)
