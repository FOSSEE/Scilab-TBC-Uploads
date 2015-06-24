R=1.987;//universal gas constant//
printf('From the graph slope=(-0.92/0.30)=(-E/(2.303*R))\nGraphical evaluation of A requires the determination of the intercept on the y axis corresponding to 1/T=0\nOne can also calculate A from k=A*exp(-E/(R*T))');
E=(0.92*R*2.303)/(0.30*10^3);
printf('\nEnergy of activation=E=%f=14.04Kcal per mol',E);
k=2.31*10^-2;
T=273;//temperature in kelvin//
printf('\nwe can find the value of A using log10(k)=log10(A)-(E/(2.303*R*T))\nUpon solving we get A=4.015*10^9litre per mol per second');
