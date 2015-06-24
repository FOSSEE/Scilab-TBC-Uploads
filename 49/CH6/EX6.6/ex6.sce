//CHAPTER 6 _ PRESSURE AND SOUND MEASUREMENT
//Caption : High Pressure Measurement
// Example 6 // Page 357
R1=100   //(' Enter the resistance of Mangnin wire=:')
disp("R1=100")
b=25*10^-12; // standard for mangnin
disp("b=25*10^-12;")
disp("u=0.5")
u=0.5    //(' enter the uncertainty in measuring pressure for gage=:')
// to calculate maximum uncertainty in differential pressure
udp=u*(10-0.1)*10^6/100;
uR=R1*b*udp;
printf('So the maximum uncertainty in measuring resistance is %fd ohm \n',uR)
//to calculate the output bridge voltage for 10 MPa
Ei=5   //('enter the input voltage=:')
disp("p1=0.1*10^6")
disp("R2=R1*(1+b*p1)")
disp("p2=10*10^6 ")
p1=0.1*10^6     //('enter the pressure at which bridge is assumed to be balanced=:')
R2=R1*(1+b*p1)
p2=10*10^6    //('enter the pressure at which output voltage is to be calculated=:')
R3=R1*(1+b*p2);
dR=R3-R2;
r=1;
Eo=(r*dR*Ei)/((1+r)^2*R2)
printf(' The output bridge voltage is %fd volt\n',Eo)


