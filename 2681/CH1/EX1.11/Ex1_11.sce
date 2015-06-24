//find pointing vector and direction of power flow of microwave
//given
clc
function w=cross_prod(E,H)//function to determine the cross product of two vector
D=[E(:),H(:)]
w(1)=det([[1;0;0],D])
w(2)=det([[0;1;0],D])
w(3)=det([[0;0;1],D])
endfunction
E=1*[1 0 0]//electric field towards ax
H=2*[0 1 0]//magnetic field towards ay
q=cross_prod(E,H)
disp(q','the display is along az axis')//along az
//ERROR in the book as cross product of two perpendicular vector is  the third vector
