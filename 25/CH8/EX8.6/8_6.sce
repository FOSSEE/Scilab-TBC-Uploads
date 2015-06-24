// example:-8.6,page no.-419.
// program to determine  the even and odd mode characteristic impedence.
syms C A d W C11 C12 Ce Co v eo er s b uo Zoe Zoo eipsila;
C=A*eipsila/d;
C11=(eo*er*W)/((b-s)/2)+(eo*er*W)/((b+s)/2);
C12=er*eo*W/s;
Ce==C11;
Co=C11+2*C12
v=1/sqrt(er*eo*uo);
Zoe=1/(v*C11); // as Ce=C11;
Zoo=1/(v*Co);
disp(Zoe,'Zoe = ')
disp(Zoo,'zoo = ')