clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 5.3.2\n')
//given data
m1=5*0.75//mass of rod 1 in kgs
m2=5*1.00//mass of rod 2 in kgs
l1=0.75//lenght of rod 1 in m
l2=1.00//lenght of rod 2 in m
K=2940//stiffness of spring in N/m
//calculations
Wn=sqrt(3*(m1+m2)*K/(m1*m2))//natural frequency in rad/sec
fn=Wn/(2*%pi)//natural frequency in Hz as solved in the textbook itself
b1=(K*l2)
b2=(K*l1-m1*l1*Wn^2/3)
x=(b2/b1)
Fmax=K*(l1*1-l2*x)/57.3//to convert into radians
//output
mprintf('The frequency of the resulting vibrations if the efect of gravity\n is neglected is %4.4f rad/sec or %4.4f Hz.\n The angular movement of CD is %3.3f degrees(out of phase) \n with the movement of AB.\n The maximum force in the spring is %4.4f N',Wn,fn,x,Fmax) 
