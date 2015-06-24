//Initilization of variables
s=4 //m length of sides
l=2 //kN load acting on each node
r=7 //kN by inspection reaction at A
//Calculation
//Taking Moment about point G
FH=(-r*12+2*10+2*6+2*2)/(2*tand(60)) //kN Compressive
//Taking moment about point H
GI=(r*14-2*12-2*8-2*4)/(2*tand(30)) //kN Tension
//Summing forces in the vertical direction
HG=-(r-(l*3))/sind(60) //kN Compression
//Taking moment about point J yields
IK=(-2*4-2*8+r*10)/(2*tand(60)) //kN 
//Result
clc
printf('The value of the forces in the components are as follows\n')
printf('FH=%fkN,GI=%fkN,HG=%fkN and IK=%fkN\n',FH,GI,HG,IK)
printf('The answer in the text book for GI is wrong')
