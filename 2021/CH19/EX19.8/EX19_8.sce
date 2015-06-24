//Finding of Mininmum Speed
//Given
D=0.3;
D1=0.6;
Vf1=2.5;
a=45;
Emano=0.75;
//To Find
u=(%pi*D)/60;
N=(-2.5)*(120*Emano**D1)/(%pi*(D1^2-D^2));
N1=-N+(1/u);
disp("Speed ="+string(N1)+" rpm");
