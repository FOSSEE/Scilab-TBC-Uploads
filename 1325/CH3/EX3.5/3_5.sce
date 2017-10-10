//To find angular acceleration of CD and BC
clc
//Given
AB=2.5//inches
BC=7//inches
CD=4.5//inches
DA=8//inches
N=100//rpm
X=60//degrees
w=(%pi*N)/30
//From triangle ABM we have 
AM=0.14//feet
BM=0.12//feet
Vb=w*AB/12//ft/s
Vc=w*AM//ft/s
Vcb=w*BM//ft/s
fb=w^2*(AB/12)//ft/s^2
bt=Vcb^2/(BC/12)//ft/s^2
os=Vc^2/(CD/12)//ft/s^2
//By measurement from acceleration diagram
sc=19.1//ft/s^2
tq=14.4//ft/s^2
Acd=sc/(CD/12)
Abc=tq/(BC/12)
printf("\n")
printf("Vb=%.2f ft/s \nVc=%.2f ft/s\nVcb=%.2f ft/s\nfb=%.2f ft/s^2\nbt=%.2f ft/s^2\nos=%.2f ft/s^2\n",Vb,Vc,Vcb,fb,bt,os)
printf("Angular acceleration of CD(counter-clockwise)= %.1f rad/s^2 \n",Acd)
printf("Angular acceleration of BC(counter-clockwise)= %.1f rad/s^2 \n",Abc)
