disp('chapter 10 ex10.1')
disp('given')
disp('design a triangular rectanglar signal generator to have 5volt triangular output')
disp('frequency ranging from 200Hz to 2kHz and a duty cycle adjustable from 20% to 80%')
disp('using bipolar op-amps with a supply of +or-15volt')
Vcc=15
Vo=5
f1=200
f2=2000
disp('Schmitt circuit design')
disp('I3>IBmax')
disp('let I3=50*10^(-6)A and Vf=0.7volt')
IBmax=500*10^(-9)
I3=50*10^(-6)
Vf=0.7
disp('R2=Vosat/I3')
R2=(Vcc-1)/I3
disp('ohms',R2)
disp('use 270kohm standard value and recalculate I3')
R2=270000
disp('I3=Vosat/R2')
I3=(Vcc-1)/R2
disp('amperes',I3)
disp('R3=UTP/I3')
R3=Vo/2/I3
disp('ohms',R3)    //use 47kohm and 1kohm
disp('integrator circuit')
disp('let C1 charging current I1min=50*10^(-6)A')
I1min=50*10^(-6)
disp('lowest frequency f1,PWmax=80%of Tmax')
PWmax=0.80*1/f1
disp('watts',PWmax)
disp('C1=I1min*t/v')
C1=I1min*PWmax/Vo
disp('farads',C1)    //standard value
disp('R4+R5+R6=(+Vosat-Vf)/I1min')
disp('R9=R4+R5+R6')
R9=(Vcc-1-Vf)/I1min
disp('ohms',R9)
disp('If2=I1min*f2/f1')
If2=I1min*f2/f1
disp('amperes',If2)
disp('R5+R6=(+Vosat-Vf)/If2')
disp('R8=R5+R6')
R8=(Vcc-1-Vf)/If2
disp('ohms',R8)
disp('R4=(R4+R5+R6)-(R5+R6)')
R4=R9-R8
disp('ohms',R4)  //use 250kohm standard value potentiometer
disp('PWmin=20% of Tmax')
PWmin=.20*1/f1
disp('watts',PWmin)
disp('R6=(R5+R6)*PWmin/PWmax')
R6=R8*PWmin/PWmax
disp('ohms',R6)
disp('use 6.8kohm standard value')
R6=6800
disp('R5=(R5+R6)-R6')
R5=R8-R6
disp('ohms',R5)   //standard value of potentiometer
disp('R7=R6=6.8kohm')