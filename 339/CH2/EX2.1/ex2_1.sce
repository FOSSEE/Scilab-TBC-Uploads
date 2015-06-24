I=5; //current in infinitely long wire
a=0.005; //radius of infinitely long wire
r_max=10*a; 
N=100;
r=(0:N)/N*r_max;
for k=1:N+1
if(r(k)<=a)
H(k)=I*r(k)/(2*%pi*a*a); 
else
H(k)=I/(2*%pi*r(k));
end;
end;
plot(r*1000,H);
plot([a a]*1000,[0 160],'r:');
title("Magnetic field distribution vs. distance from the center");
xlabel("Distance from the center of the wire,mm");
ylabel("Magnetic field,A/m");