//passenger train
//velocity
vA=20  //m/sec
//let velocity of goods train be vB m/sec
//relative velocity=20-vB m/sec
//when t=25 relative distance moved is x metres
//(20-vB)*25=x
//In the next t=30 seconds
//relative distance moved=length of passenger train=240 m
vB=(20-(240/30))*((60*60)/(1000)) //km/h
x=(20-12)*25  //m
printf("\nLength is %.2f m\nSpeed is %.2f km/h",x,vB)

