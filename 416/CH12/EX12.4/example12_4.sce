clc
clear
disp('example 12 4')
z=10+5*%i  //load
e1=250;e2=250 //emf of generator
z1=2*%i;z2=2*%i //synchronous impedence
v=(e1*z2+z1*e2)/((z1*z2/z)+z1+z2);vph=atand(imag(v)/real(v)) //substitution the value in equation 12.10
i1=(z2*e1+(e1-e2)*z)/(z1*z2+(z1+z2)*z);iph=atand(imag(i1)/real(i1)) //substitution the value in equation 12.7
pf1=cosd(vph-iph)
pd=v*i1*pf1
printf("terminal voltage %.2fV \ncurrent supplied by each %.2fA \npower factor of each %.3f lagging \npower delivered by each %.4fKW",abs(v),abs(i1),abs(pf1),abs(pd))
