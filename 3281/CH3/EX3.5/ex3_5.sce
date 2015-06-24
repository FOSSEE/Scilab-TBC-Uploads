//Page Number: 142
//Example 3.5
clc;
//Given
P=12.8D-3; //W
l=3; //cm
lamb=4.2; //cm
vswr=2.2;
jfi=%i*4.49;

//ap
ap=sqrt(2*P);

//Phase shift
bl=(2*%pi*l)/lamb;
//bp
bp=(ap*(vswr-1))/(vswr+1);

a=ap*exp(jfi);
b=bp*exp(jfi);
disp(a,b,'Required Waves:');
