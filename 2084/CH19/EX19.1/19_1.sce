//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.1
//determining which boy appears taller 

//given data
d1=4//distance(in m) of boy1 from the eye
d2=5//distance(in m) of boy2 from the eye
h1=52//height(in inch) of boy1
h2=55//height(in inch) of boy2

//calculation
alpha1=h1/d1//angle subtended by the first boy on the eye
alpha2=h2/d2//angle subtended by the second boy on the eye
if(alpha1>alpha2)
    printf('the first boy will look taller to the eye')
elseif(alpha1<alpha2)
    printf('the second boy will look taller to the eye')
else
    printf('Both boys will appear same in height to the eye')
end

