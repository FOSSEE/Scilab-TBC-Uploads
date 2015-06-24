clc
clear

//input
vht=100;//higher threshold voltage in volts
rl1=5;//resistance of load in kiloohms
rl2=10;//load resistance in kiloohms

//calculations
//for rl1
//when va=0
ia1=vht/rl1;//anode current in milliamperes
//when va=100
ia2=0;//since va=vht
//for rl2
//when va=0
ia3=vht/rl2;//anode current in milliamperes
//when va=100
ia4=0;//since va=vht
//two load lines are drawn on VI graph which coincides the aanode characteristic curve at four points
//using the data given
//point 1
vg1=0;//grid voltage in volts
va1=71;//anode voltage in volts
i1=5.9;//anode current in milliamperes
//point 2
vg2=-2;//grid voltage in volts
va2=79;//anode voltage in volts
i2=4.3;//anode current in milliamperes
//point 3
vg3=0;//grid voltage in volts
va3=57;//anode voltage in volts
i3=4.3;//anode current in amperes
//point 4
vg4=-2;//grid voltage in volts
va4=68;//anode voltage in volts
i4=3.2;//anode current in amperes

//output
mprintf('for a load of 5kiloohm,the operating points are \n vg=%3.0fV: va=%3.0fV ia=%3.1fmA \n vg=%3.0fV: va=%3.0fV ia=%3.1fmA \n for a load of 10 kiloohms,the operating points are \n vg=%3.0fV: va=%3.0fV ia=%3.1fmA \n vg=%3.0fV: va=%3.0fV ia=%3.1fmA',vg1,va1,i1,vg2,va2,i2,vg3,va3,i3,vg4,va4,i4)
