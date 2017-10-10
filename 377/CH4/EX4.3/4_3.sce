disp("Ef=K*T*log(n/Nc)");  // Ef measured from the conduction band edge
a=0.026;  //say (K*T)=a
n=10^17;
Nc=4.45*(10^17);
b=(a)*log((n)/(Nc));  //say Ef=b
printf('the value of Ef = %f eV',b);
disp("Ef=K*T*[(log(n/Nc))+((n)/(sqrt(8)*(Nc)))]");//using Joyce-Dixon approximation
c=(a)*[(log((n)/(Nc)))+((n)/(sqrt(8)*(Nc)))];
printf('the value of Ef using Joyce-Dixon approximation method is %f eV',c);