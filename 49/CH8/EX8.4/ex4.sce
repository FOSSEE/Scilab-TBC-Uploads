//CHAPTER 8 _ TEMPERATURE MEASUREMENT
//Caption : THERMISTOR
// Example 4 // Page 521
To= 293     //('Enter the temperature in K=:')
Ro=1000     //('Entering the corresponding resistance in ohm=:')
B=3450       // (' Entering the val)ue of constant=:')
Rt=2500      //(' Entering the resistance at which temperature has to be calculated=:')
T=1/((1/To)+(1/B)*log(Rt/Ro));
disp("Temperature is given by:")
disp("T=1/((1/To)+(1/B)*log(Rt/Ro));")
printf('The temperature corresponding to resistance of %d ohm is %1.3f K \n ',Rt,T)
Wrt=5    //('Entering the error in Rt resistance measurement=:' )
Wro=2    //('Entering the error in Ro temperature measurement=:')
// Let dT/dRt be represented by DRt and dT/dRo by DRo
DRt=-T^2/(B*Rt) ;
DRo=-T^2/(B*Ro);
disp ("Error in temperature measurement is given by:")
disp("Wt=sqrt((DRt*Wrt)^2+(DRo*Wro)^2);")
Wt=sqrt((DRt*Wrt)^2+(DRo*Wro)^2);
printf('Error in the required temperature measurement is %1.4f K \n',Wt)
printf('So the required temperature is %d+_%1.4f K \n',T,Wt)



