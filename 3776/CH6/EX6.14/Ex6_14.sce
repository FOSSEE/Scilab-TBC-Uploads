clear
//given  
//from example 6.9
St_ul = 2500 //psi - ultimate strength
st_yl = 40000 //psi _ yielding strength 
b = 10 //in - width from example 
A = 2 //in2 The area of the steel
d = 20 
t_ul = st_yl*A //ultimate capasity
y = t_ul/(St_ul*b*0.85) //in 0.85 because its customary
M_ul = t_ul*(d-y/2)/12 //ft-lb Plastic moment 
printf("\n The plastic moment of the system is  %0.3f ft-lb",M_ul)
