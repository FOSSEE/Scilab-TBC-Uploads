// to calculate cross and demagnetising turns/pole

clc;
P=250000;
V=400;
I_a=P/V;        //armature current
n=6;        //no of parallel path
I_c=I_a/n;    //conductor current
Z=720;        //lap wound conductors
AT_a=(1/2)*Z*I_c/n;

B=2.5*n/2;        //brush leadof 2.5 angular degrees(mech) from geo neutral
AT_c=AT_a*(1-(2*B)/180);
disp(AT_c,'cross magnetising ampere turns(AT/pole)');
AT_d=AT_a*((2*B)/180);
disp(AT_d,'demagnetising ampere turns(AT/pole)');

