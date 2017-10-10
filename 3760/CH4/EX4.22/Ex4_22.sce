clc;
Vt=100;//terminnal voltage
P=2;//no of poles
Z=1000;//no of conductors
A=2;//no of parallel paths for armature conductors
Ra_=2*10e-3;//resistance of each armature
Ra=500*Ra_*(1/2);//total armature resistance
//Let If be field current
//Ea=Vt+(Il+If)*0.5
//Ea1=100+(10+If)*0.5,because at 1055 rpm Il=10.
//Ea2=100+(20+If)*0.5,because at 1105 rpm Il=20.
//But, Ea=k1*If*speed
//Therefore,((If*1055)/(If*1105))=((100+(10+If)*0.5)/(100+(20+If)*0.5)),which gives-
If=1;//field current
Ea1=100+(10+1)*0.5;//at 1055 rpm
N=1055;//speed of rotor
phi=(Ea1*60*A)/(Z*N*P);
Rf=Vt/If;//field circuit resistance
printf('Field circuit resistance is %f ohm.\n',Rf);
printf('Flux per pole is %f Wb.',phi);
