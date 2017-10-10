clc
//Example 14.5
//Plot ratio of friction radius to outer radius versus ratio of inside radius to outer radius [Rf/Ro vs Ri/Ro]
//Assuming outer radius=100mm and a matrix r of multiplying constants 

r=[0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9]
Ro=100
n=length(r)

// Assuming uniform pressure
for i=1:n
    Ri1(i)=r(i)*Ro
    Rf1(i)=(2/3)*(((Ro^3)-(Ri1(i)^3))/((Ro^2)-(Ri1(i)^2)))
    xa(i)=Ri1(i)/Ro
    ya(i)=Rf1(i)/Ro
end

//Assuming uniform wear
for j=1:n
    Ri2(j)=r(j)*Ro
    Rf2(j)=(Ro+Ri2(j))/2
    xb(j)=Ri2(j)/Ro
    yb(j)=Rf2(j)/Ro
end

//Plotting
plot (xa,ya,'--r')
plot (xb,yb,'-b')
xgrid(0.1)
title("Plot showing relation of friction radii for friction clutches; uniform pressure compared with uniform wear",'fontsize',4)
xlabel("Ri/Ro= Inside radius/Outside radius",'fontsize',3)
ylabel("Rf/Ro=Friction radius/Outside radius",'fontsize',3)
legend('By uniform pressure Rf=(2/3)*(((Ro^3)-(Ri^3))/((Ro^2)-(Ri^2)))','By uniform wear Rf=(Ro+Ri)/2')
//-----End of program--------