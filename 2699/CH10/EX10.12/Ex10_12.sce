//EX10_12 PG-10.51
clc
disp("Refer to the figure-10.46 and figure-10.46(a)shown")
disp("We split the circuit of the figure-10.46 as shown in figure-10.46(a)" )
disp("For first stage the circuit is a non-inverting amplifier")
Rf=10e3;//feedback resistance for the first stage of the circuit
R1=100e3;//value of R1 for the first stage of the circuit 
V1=poly(0,'V1');//V1=Vin
Vo1=(1+Rf/R1)*V1;
disp(Vo1,"Therefore Vo1 =")

printf("\n For the second stage we use superposition principle.\n We use each input at one time\n")
disp("First we assume Vo1 is active and V2 is grounded as shown in figure10.46(b)")
Rf1=100e3;//feedback resistance for figure-10.46(b)
R11=10e3;//value of R1 for figure1-10.46(a)
Vo_=-Rf1/R11*Vo1;//when V2=0V as shown in figure-10.46(b)
disp(Vo_,"Therefore Vo_ =")

disp("then we assume V2 is active and Vo1 is grounded as shown in figure10.46(c)")
V2=poly(0,'V2')
Vo__=(1+Rf1/R11)*V2;//when Vo1=0V as shown in figure-10.46(c),it is a non inverting amplifier
disp(Vo__,"Therefore Vo__ =")
printf("\n   Therefore output voltage Vo = Vo_ + Vo__= 11V2-11V1 ")
disp("  =>Vo=11(V2-V1)")

