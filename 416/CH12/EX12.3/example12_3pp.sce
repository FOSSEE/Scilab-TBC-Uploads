clc
clear
disp('example12_3')
e1=3000;ph1=20;e2=2900;ph2=0;//given induced emf of two machines
z1=2+20*%i;z2=2.5+30*%i //impedence of two synchronous machine
zl=10+4*%i //load impedence
e11=e1*(cosd(ph1)+sind(ph1)*%i)
e22=e2*(cosd(ph2)+sind(ph2)*%i)
is=(e11-e22)*zl/(z1*z2+(z1+z2)*zl)
printf("current is %.2f%.2fiA =%.2fA",real(is),imag(is),abs(is))