//convert dependent current source to dependent voltage source

//Mesh Equations
A=[14,-2,0;-2,18,3;2,-2,-1]
O=inv(A)*[100;0;0]

disp(O(3))