//Example 2.6  On Velocity and Stream Function

// Initialisation of variables
function[z] = shi(x,y)
    z = x^2 - y^2;
endfunction

// Calculations
h = 0.00001;
u = (shi(3,2+h)-shi(3,2))/h;        // Partial derivative wrt y
v = -(shi(3+h,2)-shi(3,2))/h;
Velo = sqrt(u^2+v^2);
theta =  atand(v/u);

//Results 
disp(theta,"Anticlockwise angle at P(3,2) (Degree)", Velo, "Magnitude of velocity at P(3,2) (ft/sec)");

