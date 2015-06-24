//chapter-10,Example10_5,pg 303

R=10*10^3//resistor

C=0.001*10^-6//capacitor

f=(1/(2*%pi*R*C))//supply frequency

R3=10*10^3//reistance in third arm

R4=(R3/2)//reistance in fourth arm

printf("supply frequency\n")

printf("f=%.2f Hz\n",f)

printf("reistance in fourth arm\n")

printf("R4=%.2f ohm",R4)