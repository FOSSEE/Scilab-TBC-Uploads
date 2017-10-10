clc
//Example 18.1
//Parameters of spur gear

phi=14.5
m=10
Dp=160
G=3/2

Dg=Dp*G

Np=Dp/m
Ng=Dg/m
printf('Number of teeth on pinion is %d and number of teeth on gear is %d\n\n',Np,Ng)

printf('Addendum is %d mm\n\n',m)

printf('Whole depth is %0.3f mm\n\n',2.157*m)

printf('Clearance is %0.3f mm\n\n',0.157*m)

out_dia_p= Dp + (2*m)
printf('Outside diameter of pinion is %0.3f mm\n',out_dia_p)
out_dia_g= Dg + (2*m)
printf('Outside diameter of gear is %0.3f mm\n\n',out_dia_g)

root_dia_p=out_dia_p - (2*2.157*m)
printf('Root diameter of pinion is %0.3f mm\n',root_dia_p)
root_dia_g=out_dia_g - (2*2.157*m)
printf('Root diameter of gear is %0.3f mm\n\n',root_dia_g)

printf('Dedendum is %0.3f mm\n\n',1.157*m)

rad_base_cir_p=(Dp/2) * cosd(phi)
printf('Radius of base circle of pinion is %0.2f mm and diameter is %0.2f mm\n',rad_base_cir_p,2*rad_base_cir_p)
rad_base_cir_g=(Dg/2) * cosd(phi)
printf('Radius of base circle of gear is %0.2f mm and diameter is %0.2f mm\n\n',rad_base_cir_g,2*rad_base_cir_g)

centre_dist=(Dp+Dg)/2
interference = sqrt((rad_base_cir_g^2)+((centre_dist*sind(phi))^2))
addendum_rad_g=out_dia_g/2
if addendum_rad_g <= interference 
    then
    printf('There is no interference')
else
    printf('Interference will exist')
end

//End of programme