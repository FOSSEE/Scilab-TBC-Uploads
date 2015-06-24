
//determine the speed
P=6;//poles
A=2;//wave wound
Z=780;//armature conductors
F=12*10^-3;//webers..flux/poles
E=400;//volt
N=(E*60*2)/(F*Z*P);
N2=(E*60*6)/(F*Z*P);
disp('determine the speed='+string(N)+'rpm',    'determine the speed (A=P=6)='+string(N2)+'rpm');
