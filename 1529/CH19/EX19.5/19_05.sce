//Chapter 19, Problem 5, Fig.19.6
clc;
Ib=100e-9;                  //input bias current
Ri=10e3;                    //input resistance
Rf=1e6;                     //feedback resistance
A=-Rf/Ri;                   //voltage gain
Vos=Ib*((Ri*Rf)/(Ri+Rf));   //output offset voltage
printf("(a) Voltage gain = %f \n\n",A);
printf("(b) Output offset voltage due to the input bias current = %.2f mV\n\n",Vos*1000);
printf("(c) The effect of input bias current can be minimised by ensuring that both inputs ‘see’ the same driving resistance.\n");
printf("This means that a resistance of value of 9.9 k (from part (b)) should be placed between the non-inverting (+) terminal and earth in Fig. 19.6");
