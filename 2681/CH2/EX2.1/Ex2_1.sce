//maximum power
//GIVEN
I1=20D-3//current in ampere
Va=300//VOLTAGE of the beam in volts
n=1//given mode value
Prf=0.39861*I1*Va/(n+0.75)//the maximum output power
Prf=round(Prf*1000)/1000///rounding off decimals
disp(Prf,'the maximum r-f power when given beam current is 20mA in watts:')
