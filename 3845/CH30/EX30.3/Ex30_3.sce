//Example 30.3
l=1;//Angular momentum quantum number
h=6.63*10^-34;//Planck's constant (kg.m^2/s)
L=sqrt(l*(l+1))*h/(2*%pi);//Angular momentum vector (kg.m^2/s)
printf('Angles that L can make with the z-axis:\n')
for ml=1:-1:-1//ml is the angular momentum projection quantum number (for l=1, ml can be +1,0 or -1)
    L_Z=ml*h/(2*%pi);//Component of angular momentum vector along z-axis (kg.m^2/s)
    theta=acosd(L_Z/L);//Angles that L can make with the z-axis (deg)
    printf('%0.1f deg\n',theta)
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
