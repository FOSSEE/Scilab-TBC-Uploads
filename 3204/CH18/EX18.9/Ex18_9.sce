// Initilization of variables
W_a=50 // N // falling weight
W_b=50 // N // weight on which W_a falls
g=9.81 // m/s^2 // acc due to gravity
m_a=W_a/g // kg // mass of W_a
m_b=W_b/g // kg // mass of W_b
k=2*10^3 // N/m // stiffness of spring
h=0.075 // m // height through which W_a falls
// The velocity of weight W_a just before the impact and after falling from a height of h is given from the eq'n, ( Principle of conservation of energy)
v_a=sqrt(2*g*h) // m/s
// Let the mutual velocity after the impact be v_m (i.e v_m=v'), (by principle of conservation of momentum)
v_m=(m_a*v_a)/(m_a+m_b) // m/s
// Initial compression of the spring due to weight W_b is given by,
delta_st=(W_b/k)*(10^2) // cm
// Let the total compression of the spring be delta_t, Then delta_t is found by finding the roots from the eq'n........ delta_t^2-0.1*delta_t-0.000003=0. In this eq'n let,
a=1
b=-0.1
c=-0.000003
delta_t=((-b+(sqrt(b^2-(4*a*c))))/2*a)*(10^2) // cm // we consider the -ve value
delta=delta_t-delta_st // cm
// Results
clc
printf('The compression of the spring over and above caused by the static action of weight W_a is %f cm \n',delta)
