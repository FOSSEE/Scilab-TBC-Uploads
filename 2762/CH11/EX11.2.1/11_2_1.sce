//Transport Processes and Seperation Process Principles
//Chapter 11
//Example 11.3-1
//Vapour Liquid Seperation Processes
//given data
//suffix d means values are theoretical. other values withoud d are graphical values
ya2d=0.4;//mole fraction of benzene
xa0d=0.3;
V2=100;//100 kg mol mixture of benzene and toluene 
L0=110;//mixed with 110 kg mol of benzene and toluene
L1=L0;//as the 2 streams are in equilibrium with each other
V1=V2;
//material balance on A
//L0xa0+V2ya2=L1xa1+V1ya1
//assuming xa1=0.2
xa=[];
ya=[];
xa1d=0.2;
ya1d=(L0*xa0d+V2*ya2d-L1*xa1d)/V1
xa1dd=0.4;
ya1dd=(L0*xa0d+V2*ya2d-L1*xa1dd)/V1
xa1ddd=0.3;
ya1ddd=(L0*xa0d+V2*ya2d-L1*xa1ddd)/V1
xad=[xa1d xa1dd xa1ddd];
yad=[ya1d ya1dd ya1ddd];
plot(xad,yad,rec=[0,0,1,1])
pa=[116.9 135.5 155.7 179.2 204.2 240]
pb=[46 54 63.3 74.3 86 101.32]
P=101.32;//dew point pressure
//eq: paxa+pb(1-xa)=P
m=linspace(0,1,10)
n=linspace(0,1,10)
for i=1:6
    xa(i)=(P-pb(1,i))/(pa(1,i)-pb(1,i))
    ya(i)=((pa(1,i))*xa(i))/P
end
plot(m,n)
plot2d(xa,ya,rect=[0 0 1 1])
xtitle("equilibrium diagram for benzene-toluene system","xa","ya")
disp("from the graph intersection we can say ya1=0.455 and xa1=0.25")
