clc
clear
disp('example 12 5')
po=5 //mva rating
v=10 //voltage in kv
n=1500;ns=n/60 //speed
f=50 //freaquency
pfb=0.8//power factor in b
x=0.2*%i //reactance of machine
md=0.5 //machanical displacement
//no load
v=1;e=1;
p=4
spu=v*e/abs(x);sp=spu*po*1000;mt=(%pi*p)/(180*2)
spm=sp*mt //synchronous power in per mech.deree
st=spm*md*1000/(2*ns*%pi)
disp('(a)')
printf(" synchronous power %dkW \n synchronous torque for %.1f displacement %dN-M",spm,md,st)
disp('(b) full load')
ee=e+x*(pfb-sind(acosd(pfb))*%i)
spb=v*abs(ee)*cosd(atand(imag(ee)/real(ee)))/abs(x)  //synchronous power 
sppm=spb*po*1000*mt //synchronous power per mech.degree
stp=sppm*md*1000/(2*%pi*ns)//synchrounous torque under load
printf(" synchronous power %dkW \n synchronous torque for %.1f displacement %dN-M",sppm,md,stp)
