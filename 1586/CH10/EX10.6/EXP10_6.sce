clc;funcprot(0)//EXAMPLE 10.6
//INITIALISATION OF VARIABLES
c1=2;..........//NO.of independent Chemical components at 1300 celsius
p1=1;........//No.of phases at 1300 celsius
c2=2;........//NO.of independent Chemical components at 1250 celsius
p2=2;.........//No.of phases at 1250 celsius
c3=2;.........//NO.of independent Chemical components at 1200 celsius
p3=1;.......//No.of phases at 1200 celsius
//CALCULATIONS
f1=1+c1-p1;...........//Degrees of freedom of both Copper and NIckel at 1300 celsius 
f2=1+c2-p2;...........//Degrees of freedom of both Copper and NIckel at 1250 celsius
f3=1+c3-p3;..........//Degrees of freedom of both Copper and NIckel at 1200 celsius
disp(f1,"Degrees of freedom of both Copper and NIckel at 1300 celsius ")
disp(f2,"Degrees of freedom of both Copper and NIckel at 1250 celsius ")
disp(f3,"Degrees of freedom of both Copper and NIckel at 1200 celsius ")
