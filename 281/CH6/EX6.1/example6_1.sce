disp('chapter 6 ex6.1')
disp('given')
disp("voltage souurce to be designed")
disp("constant output voltage=6V")
Vo=6
disp("minimum load resistance=150")
disp("available supply voltage=+/-12V")
Vcc=12
Rl=150
disp("from the zener diode specification Vz=6.3")
Vz=6.3
disp("recommended current for for zener is 20mA")
Iz=.02
disp("R1=(Vcc-Vz)/Iz")
R1=(Vcc-Vz)/Iz
disp('ohms',R1)
disp("Ilmax=Vz/Rl")
Ilmax=Vz/Rl
disp('amperes',Ilmax)
disp("Transistor specification is")
disp("npn  Ie(max)>42mA  Vcemax>Vcc=12V")
disp("Vrl=6V")
disp("PD=Iemax(Vcc-Vrl)")
Iemax=0.042
Vrl=6
Pd=Iemax*(Vcc-Vrl)
disp('watts',Pd)
disp("hfe(min)=20")
disp("Iomax=Ilmax/hfe(min)")
hfe=20
Iomax=Ilmax/hfe
disp('amperes',Iomax)
disp("use opamp with a compesating capacitor")