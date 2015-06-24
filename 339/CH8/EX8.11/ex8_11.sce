theta=(1:1:360)/180*%pi; //define conduction angle

//compute efficiency
nu=-1/2*(theta-sin(theta))./(theta.*cos(theta/2)-2*sin(theta/2)); 

plot(theta/%pi*180,nu*100,'r','linewidth',2);
set(gca(),"auto_clear","off");
plot([0 180],[%pi/4*100 %pi/4*100],'b:');
plot([180 180],[0 %pi/4*100],'b:');
plot(180,%pi/4*100,'bo');
plot(360,50,'bo');
mtlb_axis([0 360 50 100]);
title('Maximum theoretical efficiency of the amplifier');
xlabel('Conduction angle \Theta_0, deg.');
ylabel('Efficiency \eta, %');