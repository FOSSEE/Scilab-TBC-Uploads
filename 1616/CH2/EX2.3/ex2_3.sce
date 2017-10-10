//to find the phase of the wave at x=50cm and t=1micro.sec
f=1e9;
w=2*%pi*f;
r=0.5;
l=0.2e-6;
g=0.1;
c=100e-12;
k=sqrt((r+%i*w*l)*(g+%i*w*c));
b=imag(k);
ph=30*3.142*2/180;
t=1e-6;
x=0.5; //in metre
phOfWave=ph+w*t-b*x;
indegree=phOfWave*180/%pi;
disp('Phase of wave ='+string(phOfWave)+'rad');
disp('and in degree = '+string(indegree)+' degree');