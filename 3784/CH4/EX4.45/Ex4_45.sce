clc
//Variable Initialisation
Ra=0.4//Armature resistance in ohm
Rf=0.4//Field resistance in ohm
N1=400//Rated Speed of Motor in rpm
N2=500//Rated Speed of Motor in rpm
//Solution
W1=2*%pi*N1/60
W2=2*%pi*N2/60
Ia=97.5
K=15.8
Eb=K*W2
Rb=(Eb/Ia)-Ra
printf('\n\n Resistance across motor terminal=%0.1f ohm\n\n',Rb)
