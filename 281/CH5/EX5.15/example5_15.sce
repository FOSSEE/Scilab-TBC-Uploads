disp('chapter 5 ex5.15')
disp('given')
disp('Determine the feedback capacitance')
disp('from the data sheet Ro=150ohm')
Ro=150
disp('R2=220kohms')
R2=220000
disp('load capacitance CL=.1*10^(-6)F')
CL=.1*10^(-6)
disp('C2=Ro/R2*CL')
C2=Ro/R2*CL
disp('farads',C2)
disp('additional resistor R=470ohm')
R=470
disp('C2=(Ro+R)/R2*CL')
C2=(Ro+R)/R2*CL
disp('farads',C2)
disp('use 300pF standard value')