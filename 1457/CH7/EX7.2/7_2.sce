clc
//Initialization of variables
Dratio=8
mu=0.0006
rho=52/32.2
vm=1.22*10^-5 //lb s /ft^2
V=45 //fps
Fm=0.8
//calculations
vp=mu/rho
Vm=vm*V/(Dratio*vp)
Fratio=rho*V^2 /(1.94*Vm^2 *Dratio^2)
Fp=Fratio*Fm
//results
printf("velocity = %.2f fps",Vm)
printf("\n Drag force = %d lb",Fp)
disp('The answer given in textbook is wrong. Please use a calculator')
