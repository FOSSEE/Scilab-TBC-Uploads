//FIND THE DIRECTION OF POWER FLOW OF MICROWAVE
//given
clc
function w=cross_prod(E,F)//function to determine the cross product of two vectors
D=[E(:),F(:)]
w(1)=det([[1;0;0],D])
w(2)=det([[0;1;0],D])
w(3)=det([[0;0;1],D])
endfunction
E=[0 1 0]
F=[1 0 0]
q=cross_prod(E,F)
disp(q','the cross product of the given fields')//towards az
//ERROR  in book as cross product of two perpendicular vector gives the third
