exec ("Gravitation.sci",-1)

//Given that
//Both the stars are moving around the centre of mass of the two particale system
//m1 = mass of visible star
//m2 = mass of invisible star
//r1 = distance of m1 from center of mass
//r2 = distance of m2 from center of mass
//r = r1+r2 distance between both the stars
//we have G*m1*m2/(r*r) = m1*v1*v1/r1 = m2*v2*v2/r2 ....1
v1 = 270*10^3 //in meter/sec
T = 1.7 * 24 * 60 * 60 //in s
m1 = 6* Ms 

//Sample Problem 7
printf("**Sample Problem 7**\n")
//m2 = ?
//using definition of center of mass
// we have r = r1 * (m1 + m2)/m2  ....2
//& 2*pi*r1/v1 = T  ....3
//therefore
r1 = v1*T/(2*%pi);  //from equation 3
//from equation 1 & 2
//G*(m2^3)/((r1*(m1+m2))^2) = v1*v1/r1
//we have a polynomial equation in order 3 
//(m2^3)/(m1+m2)^2 = v1*v1*r1/G
temp = v1*v1*r1/G; //say
//=> -m2^3 + temp*m2^2 + 2*m1*temp*m2+ m1*m1*temp
solpoly = (poly([-m1*m1,-2*m1,-1,1/temp],'x','c'));
sol = roots(solpoly,'e');
printf("The mass of the invisible star is equal to %e kg\n", sol(1))
printf("The mass of the invisible star is equal to %f times the mass of Sun", sol(1)/Ms)