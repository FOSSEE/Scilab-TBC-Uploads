clc
//initialisation of variables
d= 2 //in
Px= -600 //lb
Py= 1200 //lb
x1= 2 //in
x2= 2 //in
x3= 2 //in
Ray= -400 //lb
Rax= 400 //lb
Rbx= 200 //lb
Rby= -800 //lb
//CALCULATIONS
Mb= sqrt((Rax*x1)^2+(Ray*x1)^2)
Mc=sqrt((Rbx*x3)^2+(Rby*x3)^2)
if (Mb<Mc) 
    M=Mc
else 
    M= Mb    
end
Smax= M*12*64*(d/2)/(%pi*d^4)
//RESULTS
printf ('Maximum normal stress= %.1f psi',Smax) 

