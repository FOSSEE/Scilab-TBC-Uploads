clc 
// Given that
W=250//in ton Weight of injection moulding machine
d=4.5//in inch diameter of spur gear
t=0.5//in inch thickness of spur gear
//Gears have a fine tooth profile

// Sample Problem on page no. 488

printf("\n # Injection Molding of Parts # \n")

//because of fine tooth profile pressure required in the mould cavity is assumed to be of the order 100MPa or 15Ksi
p=15//inKsi
A=(3.14*(d^2))/4//in inch^2 area of the gear
F=A*15*1000
n=(W*2000)/F //weight is converted into lb by multiplying it by 2000
printf("\n\n Number of gears that can be injected =%d",n)

// Second part of this question is theoritical
