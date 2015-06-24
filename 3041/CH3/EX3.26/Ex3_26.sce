//Variable declaration
beeta=125                       //current gain
gm=35                           //transconductance(mS)
Re=4                            //emitter resistance(k ohms)
Rb=1.5                          //base resistance(k ohms)

//Calculations
//Part a
rpi=beeta/gm                   //dynamic resistance(k ohms)
Ri=rpi+((1+beeta)*Re)          //input resistance(k ohms) 
Ro=((Rb+rpi)*Re)/((Rb+rpi)+((1+beeta)*Re))  //output resistance(ohms) as Ro=Vo/Isc

//Part b                                 
f=((1+beeta)*Re)/(Rb+rpi+((1+beeta)*Re))  //transfer function

//Results
printf ("value of Ri is %.1f K ohms and Ro is %.4f k",Ri,Ro)
printf ("transfer function is %.2f",f)
