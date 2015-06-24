
//calcute the num of prim turns and prim $sec current
KVA=50
E1=6000
E2=250
N2=52
N1=N2*E1/E2
I2=KVA*1000/E2
I1=KVA*1000/E1
disp('prim current  I1 =  '+string(I1)+'    amps'  , 'sec current  I2 =  '+string(I2)+'    amps'  , 'prim num of turns  N1 =  '+string(N1)+'    turns'   )
