clear
clc
KD=4.7;//distribution coefficient
W1=20;//amount of ether added in cm^3
W2=50;//amount of solution in cm^3
M=0.20;//amount of aspirin in gm
w2=(M/(1+(W1*KD)/W2));//mass of aspirin in ether phase in gm
printf('w2=%.4f gm',w2)
w1=M-w2;//mass of aspirin in aqueous phase in gm
printf('\nw1=%.4f gm',w1)
n=2
W=10;//
wn=(((1/KD)*W2)/(((1/KD)*W2)+W))^n*(M);//amount of aspirin unextracted in gm
printf('\nwn=%.4f gm',wn)
w=(M-wn);//amount of aspirin extracted in gm
printf('\nw=%.4f gm',w)

//page 203
