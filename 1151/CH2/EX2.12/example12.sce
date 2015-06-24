printf("closed loop transfer function =16/(s^2+(4+16*K)*s+16)");
printf("characterstic equation of the given system is 4+16*K)*s+16=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
w=sqrt(16);
d=0.8;//given
k=(2*d*w-4)/16;
mo=exp((-%pi*d)/sqrt(1-d^2))*100;
disp(k,"value of K=");
disp(mo,"maximum overshoot(in %)");
