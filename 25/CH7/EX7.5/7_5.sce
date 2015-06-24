//example:-7.5,page no.-358.
// program to find the resonant frequency and Q for TE01delta mode.
delta=0.001;eipsilar=95;a=0.413;L=0.008255;c=3*10^8;
//tan((B*L)/2)=alpha/beta.
//ko=(2*%pi*f)/c;
alpha=sqrt((2.405/a)^2-(ko)^2);
B=sqrt((eipsilar*(ko)^2)-(2.405/a)^2); // beta
f1=((c*2.405)/(2*%pi*sqrt(eipsilar)*a))*10^-7;
f2=((c*2.405)/(2*%pi*a))*10^-7;
disp(f1,'f1 in GHZ = ')
disp(f2,'f2 in GHZ = ')
Q=1/tan(delta);
disp(Q,'approx. value of Q due to dielectric loss = ')