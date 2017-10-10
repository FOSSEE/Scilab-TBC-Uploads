clc
SCL=1000 //stator copper loss in watts
V=460 //line voltage of induction motor in volts
I=25 //line current of motor in amperes
pf=0.85 //power factor of motor
Pin=sqrt(3)*V*I*pf //ans  may vary due to roundoff error
mprintf("Pin=%fW\n",Pin)
Pg=Pin-SCL //air gap power
mprintf("Pg=%fW\n",Pg)//ans  may vary due to roundoff error
RCL=500 //rotor copper loss in watts
Phe=800 //core loss in watts
Pfw=250 //winding and friction loss in Watts
PLL=200 //stray load loss in watts
DMP=Pg-RCL ///developed mechanical power in watts
mprintf("DMP=%fW\n",DMP)//ans  may vary due to roundoff error
Prot=Phe+Pfw+PLL //power loss in rotor in watts
Pout=DMP-Prot
mprintf("Pout=DMP-Prot=%fW\n",Pout)//ans  may vary due to roundoff error
mprintf("Horsepower=Pout/746=%fhp\n",Pout/746)//ans  may vary due to roundoff error,conversion of watts to hp needs division by 746
mprintf("η=Pout/Pin=%f\n",Pout/Pin)//ans  may vary due to roundoff error



