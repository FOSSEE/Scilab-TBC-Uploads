clc
SB=10000000 //rating of transformer
VL1B=230000 //voltage rating
IL1B=SB/(sqrt(3)*VL1B)
mprintf("ILIB=%fA\n",IL1B)
VL2B=4160
IL2B=SB/(sqrt(3)*VL2B)
mprintf("IL2B=%fA\n",IL2B)
//star delta connected
mprintf("Rated kVA=SB/1000=%fkVA\n",SB/1000)
mprintf("Rated 11=I1B=ILIB=%fA\n",IL1B)
mprintf("Rated I2=I2B=IL2B/sqrt(3)=%fA\n",IL2B/sqrt(3))
VL1=230 //rating in kV
VL2=4160//rating in kV
mprintf("Rated V1=V1B=VL1/sqrt(3)=%fkV\n",VL1/sqrt(3))
mprintf("V2=V2B=%fV\n",VL2)
mprintf("turns ratio=V1B/V2B=%f\n",(VL1*1000)/(VL2*sqrt(3)))
mprintf("kVA per phase=%dkVA\n",3333)
//delta star connected
mprintf("Rated kVA=%fkVA\n",SB/1000)
mprintf("kVa per phase=%dkVA\n",3333)
mprintf("V1B=VL1B=%fkV\n",VL1)
mprintf("V2B=VL2B/sqrt(3)=%fV\n",VL2/sqrt(3))
mprintf("I1B=IL1B/sqrt(3)=%fA\n",IL1B/sqrt(3))
mprintf("I2B=IL2B=%fA\n",IL2B)
mprintf("a=V1B/V2B=%f\n",(VL1B*sqrt(3))/VL2B)

//delta delta connected
mprintf("Rated kVA=%fkVA\n",SB/1000)
mprintf("kVA per phase=%dkVA\n",3333)
mprintf("V1B=%fKV\n",VL1B/1000)
mprintf("V2B=%fV\n",VL2B)
mprintf("I1B=%fA\n",IL1B/sqrt(3))
mprintf("IL2B=%fA\n",IL2B/sqrt(3))
mprintf("a=%f\n",VL1B/VL2B)
