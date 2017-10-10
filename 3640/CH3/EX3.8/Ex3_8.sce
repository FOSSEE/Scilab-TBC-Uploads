clc
//example below is an extension of Ex3_7
//values below from Ex3_7
V2B=240 //secndary side voltage
a=10
//0.8 pf lagging
V1=2496.44
V=V1/a //secondary voltage at full load
mprintf("|V1/a|=%fV\n",V)
Regulation=(V-V2B)/V2B //ans may vary due to roundoff error
mprintf("Regulation=(|V1/a|-V2B)/V2B=%f\n",Regulation)
//0.8 pf leading
V1=2347.8 
V=V1/a
mprintf("V at 0.8 pf leading=%fV\n",V)
mprintf("Regulation=%f\n",(V-V2B)/V2B)
