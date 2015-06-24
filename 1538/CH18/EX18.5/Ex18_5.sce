//example-18.5 
//page no-548
//given
//resistance of wire at 70 degree celcius is 57.2 ohm and at 25 degrees celcius 50 ohm
R25=50  //ohm
R70=57.2  //ohm
T1=25    //degree C
T2=70  //degree C\
//as we know that
//Rt=R0*(1+t*alpha)
//putting above values in the above given equation we get
//R25=R0*(1+25*alpha)  -------(1)
//R70=R0*(1+70*alpha)  --------(2)
//applying R70/R25
//we get
//R70/R25=(1+70*alpha)/(1+25*alpha)
//solving for alpha we get equation as follows
alpha=(R70-R25)/(T2*R25-T1*R70)  //K^-1
printf ("the temperature coefficient of resistance is %f K^-1",alpha)
