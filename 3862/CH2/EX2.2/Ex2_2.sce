clear
//
//F                force 
//hd               horizontal distance 
//vd               vertical  distance
//O                angle
//M                moment of force
//Taking clockwise moment as positive
//calculations
F=5000.0
o=37
M=8000.0
hd=M/(F*cos(o*3.14/180))
printf("\n %s %.2f %s" ,"\n \n  Distance = %0.3f ",hd,"m")
