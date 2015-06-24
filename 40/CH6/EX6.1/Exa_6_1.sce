//The minimum phase concept
z=%z;
F=0:(0.5/400):0.5;
z=exp(%i*2*%pi*F);
for i=1:401
H1Z(i)=((z(i)-1/2)*(z(i)-1/4))/((z(i)-1/3)*(z(i)-1/5));
end
for i=1:401
H2Z(i)=(((-1/2)*z(i)+1)*(z(i)-1/4))/((z(i)-1/3)*(z(i)-1/5));
end
for i=1:401
H3Z(i)=(((-1/2)*z(i)+1)*((-1/4)*z(i)+1))/((z(i)-1/3)*(z(i)-1/5));
end
[phase_H1Z,m]=phasemag(H1Z);
[phase_H2Z,m]=phasemag(H2Z);
[phase_H3Z,m]=phasemag(H3Z);
a=gca();
a.x_location="origin";
xlabel('Digital Frequency F');
ylabel('phase[degrees]');
xtitle('phase of three filters');
plot2d(F,phase_H1Z,rect=[0,-200,0.5,200]);
plot2d(F,phase_H2Z,rect=[0,-200,0.5,200]);
plot2d(F,phase_H3Z,rect=[0,-200,0.5,200]);