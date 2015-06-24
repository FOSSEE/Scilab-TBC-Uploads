
//refer Fig.1.12 in the textbook
//Applying KVL
//for mesh AHGBA, -23*i1+20*i2+3*i4=0
//for mesh GFCBG, 20*i1-43*i2+20*i3+3*i4=0
//for mesh FEDCF, 20*i2-43*i3+3*i4=0
//for mesh ABCDJIA, 3*i1+3*i2+3*i3-9*i4+50=0
a=[-23 20 0 3;20 -43 20 3;0 20 -43 3;3 3 3 -9]
b=[0;0;0;-50]
i=inv(a)*b
i1=i(1,1)
i2=i(2,1)
i3=i(3,1)
i4=i(4,1)
V1=3*(i4-i1)
V2=3*(i4-i2)
V3=3*(i4-i3)
mprintf("Voltage across branch AB=%f V, Voltage across branch BC=%f V, Voltage across branch CD=%f V", V1, V2, V3)
