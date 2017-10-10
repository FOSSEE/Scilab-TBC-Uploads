//Eg-4.2
//pg-143

clear
clc

xl=0;
xu=1;
for i=1:20
    fl=xl-cos(xl);
    fu=xu-cos(xu);
    rt=(xl+xu)/2;
    fr=rt-cos(rt);
    if fl*fr<0 then
        xu=(xl+xu)/2;
    elseif fr*fu<0 then
        xl=(xl+xu)/2;
    else
        rt=(xl+xu)/2; 
    end
   
end
printf('The solution after 20 iterations is %f',rt)
