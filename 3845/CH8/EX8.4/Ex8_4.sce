//Example 8.4
m1=0.500;//Mass of object 1 (kg)
m2=3.50;//Mass of object 2 (kg)
v1=4.00;//Initial velocity of object 1 (m/s)
v2=0;//Initial velocity of object 2 (m/s)
//Using equations of conservation of momentum and conservation of internal kinetic energy, we can derive a quadratic equation with v1_final as the variable
//(1/2*m1+1/2*m1^2/m2)v1_final^2-(m1^2/m2*v1)v1_final-(1/2*m1*v1^2-1/2*m1^2/m2*v1^2)

p=[(1/2*m1+1/2*m1^2/m2) -(m1^2/m2*v1) -(1/2*m1*v1^2-1/2*m1^2/m2*v1^2)];//Coefficients of above polynomial

r=roots(p);//Finding the roots of the equation
if r(1,1)==v1 then 
    v1_final=r(2,1);
else 
    v1_final=r(1,1);
end//Assigning a meaningful value to final velocity of object 1 (m/s)
v2_final=m1/m2*(v1-v1_final);//Final value of object 2 from momentum equation (m/s)

printf('Final velocity of object 1 = %0.2f m/s',v1_final)
printf('\nFinal velocity of object 2 = %0.2f m/s',v2_final)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
