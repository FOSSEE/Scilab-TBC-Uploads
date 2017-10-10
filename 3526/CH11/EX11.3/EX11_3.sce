clc;funcprot(0);//EXAMPLE 11.3
//page 321
// Initialisation of Variables
M=200;........//Mass of alpha phase of alloy in gm
%Sn=61.9;......//Percentage of the Sn in the eutectic alloy in percent
%Pb=19;.......//Percentage of the Pb in the alpha phase in percent
%Pb2=97.5;.....//Percentage of the Sn in the beeta phase in percent
//CALCULLATIONS
W1=(%Pb2-%Sn)/(%Pb2-%Pb);.....//Weight fraction of alpha phase
W2=(%Sn-%Pb)/(%Pb2-%Pb);.......//Weight fraction of beeta phase
Ma=M*W1;......//The mass of the alpha phase in 200g in g
Mb=M-Ma;......//The amount of the beeta phase in g at  182 degree celsius
MPb1=Ma*(1-(%Pb/100));.......//Mass of Pb in the alpha phase in g
MSn1=Ma-MPb1;......//Mass of Sn in alpha phase 
MPb2=Mb*(1-(%Pb2/100));.....//Mass of Pb in beeta phase
MSn2=123.8-MSn1;.....//mass of Sn in beeta Phase
disp(W1,"Weight fraction of alpha phase")
disp(W2,"Weight fraction of beeta phase")
disp(Ma,"The mass of the alpha phase in 200g in g:")
disp(Mb,"The amount of the beeta phase in g at  182 degree celsius:")
disp(MPb1,"Mass of Pb in the alpha phase in g:")
disp(MSn1,"Mass of Sn in alpha phase")
disp(MPb2,"Mass of Pb in beeta phase:")
disp(MSn2,"mass of Sn in beeta Phase:")
