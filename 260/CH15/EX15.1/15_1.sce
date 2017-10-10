//Eg-15.1
//pg-605

clear
clc

//using d/dx to denote the partial derivatve w.r.t x

//Consider the general equation defined by the equation [2] on pg-605

// A * d^2(F)/dx^2 + B * d^2(F)/dxdy + C * d^2(F)/dy^2 + D = 0;
//for part (i) 

A(1) = 1;
B(1) = 0;
C(1) = 1;
D(1) = 0;

//for part (ii)

A(2) = 1;
B(2) = 0;
C(2) = -1;
D(2) = 0;

//for part(iii)

A(3) = 1;
B(3) = 0;
C(3) = 0;
D(3) = 0;

for(i = 1:3)
    dt(i) = B(i)^2 - 4*A(i)*C(i);
    
    if(dt(i) > 0)
        printf('The discriminant of the PDE in part %d is  %f ,so it is Hyperbolic\n',i,dt(i))
    
    elseif(dt(i) < 0)
        printf('The discriminant of the PDE in part %d is  %f ,so it is Elliptic\n',i,dt(i)')
    
    else(dt(i) == 0)
        printf('The discriminant of the PDE in part %d is  %f ,so it is parabolic\n',i,dt(i)')
    end
    
end

