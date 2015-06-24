//Example 2.1
//(a)calculate  the steady state rate of heat gain .
//(b), th etemp. of interfaces of composite wall.
//(c)the percentage of total heat transfer resistance.
//additional thickness of cork. 
//Given
A=1           //m^2, area
//for inner layer (cement)
ti=0.06       //m, thickness
ki=0.72       //W/m C,  thermal conductivity
Ti=-15        //C, temprature
//for middle layer (cork)
tm=0.1        //m, thickness
km=0.043      //W/m C,  thermal conductivity
//for outer layer(brick)
to=0.25       //m, thickness
ko=0.7        //W/m C,  thermal conductivity
To=30         //C, temprature
 
//Calculation
//Thermal resistance of outer layer  //C/W
Ro=to/(ko*A) 
//Thermal resistance of middle layer   //C/W
Rm=tm/(km*A) 
//Thermal resistance of inner layer    //C/W
Ri=ti/(ki*A)
Rt=Ro+Rm+Ri
tdf=To-Ti        //temp driving force
//(a)
Q=tdf/Rt      //rate of heat gain
printf("the rate of heat gain is %f W\n",Q)

//(b)
//from fig. 2.4
td1=Q*to/(ko*A)   //C temp. drop across the brick layer
T1=To-td1         //interface temp. between brick and cork
//similarly
td2=Q*tm/(km*A)   //C temp. drop across the cork layer
T2=T1-td2         //C, interface temp. between cement and cork
printf("interface temp. between brick and cork is %f C\n",T1)
printf("interface temp. between cement and cork is %f C\n",T2)


//(c)
Rpo=Ro/Rt         //thermal resistance offered by brick layer
Rpm=Rm/Rt         //thermal resistance offered by cork layer
Rpi=Ri/Rt         //thermal resistance offered by cement layer
printf("thermal resistance offered by brick layer is %f percent\n",Rpo*100)
printf("thermal resistance offered by cork layer is %f percent\n",Rpm*100)
printf("thermal resistance offered by cement layer is %f percent\n",Rpi*100)

//second part
x=30              //percentage dec in heat transfer 
Q1=Q*(1-x/100)    //W, desired rate of heat flow
Rth=tdf/Q1        //C/W, required thermal resistance
Rad=Rth-Rt        //additional thermal resistance
Tad=Rad*km*A
printf("Additional thickness of cork to be provided =%f cm",Tad*100)
 
