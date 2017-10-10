clc;funcprot(0);//EXAMPLE 3.1
// Initialisation of Variables
Cn=8;......//No. of Corners of the Cubic Crystal Systems
c=1;......//No. of centers of the Cubic Crystal Systems in BCC unit cell
F=6;.......//No. of Faces of the Cubic Crystal Systems in FCC unit cell
//CALCULATIONS 
N1=Cn/8;.....//No. of latice points per unit cell in SC unit cell
N2=(Cn/8)+c*1;....//No. of latice points per unit cell  in BCC unit cells
N3=(Cn/8)+F*(1/2);....//No. of latice points per unit cell  in FCC unit cells
disp(N1,"No. of latice points per unit cell in SC unit cell:")
disp(N2,"No. of latice points per unit cell  in BCC unit cells:")
disp(N3,"No. of latice points per unit cell  in FCC unit cells:")
