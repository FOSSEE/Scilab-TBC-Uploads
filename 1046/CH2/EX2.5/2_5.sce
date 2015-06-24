//Exaple2.5
//Page no.24
//Given
//inside and outside diameter and Temp.  of sphorical vessel
do=16
t=0.1
Ri=do/2        //m, inside radius 
Ro=Ri+t        //m. outside radius
To=27          //C, 
Ti=4           //C
k=0.02         //W/m C, thermal conductivity of foam layer 
//from eq. 2.23 the rate of heat transfer
Q=(Ti-To)*(4*%pi*k*Ro*Ri)/(Ro-Ri)
printf("the rate of heat transfer is %f W\n",Q)
//Refrigeration capacity(RC)
//3516 Watt= 1 ton
RC=-Q/3516
printf("Refrigeration capacity is %f tons",RC)
