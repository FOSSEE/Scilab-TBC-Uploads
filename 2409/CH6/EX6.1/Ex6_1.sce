//Variable Decalration
a=3
b=2
dB=1

//Calculation
//Initializations
tita= -90:2:91
tita(46) = 1
tita1= -90:2:91
Y=linspace(0,0,91)
E=linspace(0,0,91)
gE=linspace(0,0,91)
GE=linspace(0,0,91)
X=linspace(0,0,91)
E1=linspace(0,0,91)
gH=linspace(0,0,91)
GH=linspace(0,0,91)

for i = 1:length(Y)-1
   Y(i)=%pi*b*sin(tita(i)*3.142/180)
   X(i)=%pi*a*sin(tita(i)*3.142/180)
   E(i)=(sin(Y(i)))/Y(i)   
   E1(i)=cos(tita1(i)*3.142/180)*(sin(X(i)))/X(i)
   gE(i)=(E(i))**2   //Raiation pattern in E-Plane
   gH(i)=E1(i)**2    //Raiation pattern in H-Plane
   GE(i)=10*log10(gE(i))  //Raiation pattern in E-Plane(dB)
   GH(i)=10*log10(gH(i))  //Raiation pattern in H-Plane(dB)
end;

//Results

subplot(211)
plot(tita,GE)   //Plotting E-Plane radiation pattern
xtitle('','tita degrees',"GE(tita)" )
subplot(212)
plot(tita1,GH)  //Plotting H-Plane radiation pattern
xtitle('','tita degrees','GH(tita)')

    
