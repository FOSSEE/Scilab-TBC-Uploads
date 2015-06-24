clc
clear 
printf('example 1.19 page number 54\n')

//to find the economic pipe diameter from nomograph
//from the nomograph,we get the values of w and density

w=450     //in kg/hr
density=1000   //in kg/m3
d=16   //in mm

u=(w/density)/(3.14*d^2/4);
Re=u*density*d/0.001;

if Re>2100 then printf("flow is turbulent and d= %f mm",d)
else disp ("flow is laminar and this nomograph is not valid")
end
