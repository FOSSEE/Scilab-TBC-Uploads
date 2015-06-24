//chapter-10,Example10_3,pg 297

Z1=complex(20,80)//impedance in first arm

Z2=complex(200)//impedance in second arm

Z3=complex(100,200)//impedance in third arm

f=50//excitation frequency

Zu=((Z2*Z3)/Z1)//impedance of fourth arm

Cu=-(1/(2*%pi*f*imag(Zu)))//capacitance in fourth arm

printf("capacitance in fourth arm\n")

printf("Cu=%.9f F\n",Cu)

Ru=real(Zu)//resistance in fourth arm

printf("resistance in fourth arm\n")

printf("Ru=%.2f ohm\n",Ru)
