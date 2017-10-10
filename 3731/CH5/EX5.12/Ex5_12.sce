
//Chapter 5:Dc Motor Drives
//Example 12
clc;

//Variable Initialization

//Ratings of the 2-pole separately excited DC motor with the fields coils connected in parallel
V=220      // rated voltage in V
N=750      // rated speed in rpm
Ia1=100    // rated current in A
Ra=0.1     // armature resistance in ohms

//Solution
E1=V-Ia1*Ra            //rated back emf at rated operation
Wm1=2*%pi*N/60     //angular speed
Trated=E1*Ia1/Wm1      //rated torque
Ke_phi1=E1/Wm1

//(i) When the armature voltage is reduced to 110V
Wm2=2*%pi*N/60    //angular speed
E2=Ke_phi1*Wm2
//Now there are two linear equations...that we have to solve
//They are given by 0.3*N2+2.674*Ia2=500 and 0.28*N2+0.1*Ia2=110
a = [0.3,2.674;0.28,0.1]
b = [500;110]
x = inv(a)*b
N2=x(1)      //let the motor speed be N2
Ia2=x(2)     //let the motor current be Ia2

//(ii)When the field coils are connected in series
K=Ke_phi1/2
Wm3=2*%pi*N/60    //angular speed
E3=K*Wm3
//Now there are two linear equations...that we have to solve"
//They are given by 0.3*N3+1.337*Ia3=500 and 0.14*N3+0.1*Ia3=220"
a = [0.3,1.337;0.14,0.1]
b = [500;220]
x = inv(a)*b
N3=x(1)            //let the motor speed be N3
Ia3=x(2)           //let the motor current be Ia3

//Results
mprintf("(i)Hence the motor armature current is Ia2 :%.1f A",Ia2)
mprintf("\nAnd the required speed is N2 :%.1f rpm",N2)
mprintf("\n(ii)Hence the motor armature current is Ia3 :%.1f A",Ia3)
mprintf("\nAnd the required speed is N3 :%.1f rpm",N3)
