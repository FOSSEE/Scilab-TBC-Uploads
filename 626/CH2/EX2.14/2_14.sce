clear;
clc;
close;
disp("Example2.14")
p=20 //p=p2/p1 i.e. compression ratio.
gm=1.4 // gamma
//Vx1=Vx2 i.e. axial velocity remains same.
//calculations:
d=p^(1/gm) //d=d2/d1 i.e. density ratio
A=1/d // A=A2/A1 i.e. area ratio which is related to density ratio as: A2/A1=d1/d2.
//disp(A)
Fx=1-p*A  //Fx=Fxwall/p1*A1 i.e nondimensional axial force.
disp(Fx,"The non-dimensional axial force is :")
disp("The negative sign on the axial force experienced by the compressor structure signifies a thrust production by this component.")