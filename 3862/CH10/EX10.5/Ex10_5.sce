clear
//variable declaration

//A symmetric I-section of size 180 mm × 40 mm, 8 mm thick is strengthened with 240 mm × 10 mm rectangular plate on top flange. If permissible stress in the material is 150 N/mm^2, determine how much concentrated load the beam of this section can carry at centre of 4 m span. 

b1=(240)
b=(180)
t=(10)
h=(400)
w=(8)
                                                                                               
A=(240*10+180*8+384*8+180*8)       //Area of section,A

Y=(240*10*405+180*8*(400-4)+384*8*200+180*8*4)/A

I=(b1*(t**3)/12)+(b1*t*((((h+5)-Y)**2)))+(b*(w**3)/12)+(b*w*((((h-4)-Y)**2)))+(w*((h-16)**3)/12)+((h-16)*w*((((h/2)-Y)**2)))+(b*(w**3)/12)+(b*w*(((4-Y)**2)))

ytop=(h+t/2)-Y
ybottom=Y
ymax=Y

Z=I/ymax
fper=150
M=fper*Z/1000000         //Momnent carrying capacity of the section

//Let P kN be the central concentrated load the simply supported beam can carry. Then max bending movement in the beam

P=M*4/(w/2)

printf("\n P= %0.3f  KN",P)
