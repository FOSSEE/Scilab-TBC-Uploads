
//Variable Declararion

L=18    //Latitude of earth station(degrees)
PE=-73  //Longitude of earth station(degrees)
Pss=-105 //Satellite location(degrees)
aGSO=42164 //Circumference of earth (km)
R=6371 //Radius of earth(km)


//Calculation

function [ans] = mycross(A,B)
    i = A(2)*B(3) - B(2)*A(3)
    j = A(1)*B(3) - B(1)*A(3)
    k = A(1)*B(2) - B(1)*A(2)
    ans = [i,j,k]
endfunction

B=PE-Pss  //Angle between the planes containing a and c (degrees)
Rx=R*cos(L*3.142/180)*cos(B*3.142/180) //Geocentric-equitorial coordinate(km)
Ry=R*cos(L*3.142/180)*sin(B*3.142/180) //Geocentric-equitorial coordinate(km)
Rz=R*sin(L*3.142/180) //Geocentric-equitorial coordinate(km)

r= [Rx,Ry,Rz]        //Coordinates for local gravity direction
k=[Rx-aGSO,Ry,Rz]   //geocentric-equitorial coordinates for propagation direction
e=[0,0,1]            //geocentric-equitorial coordinates for polarization vector

f=mycross(k,r) //Direction of normal to reference plane
modf = (f(1)**2+f(2)**2+f(3)**2)**0.5
g = mycross(k,e)// Direction of normal to plane contaning e and k
h=mycross(g,k) //Direction of polarization of the plane 
modh=(h(1)**2+h(2)**2+h(3)**2)**0.5
p=(h/modh)

E = asin((p.*f)/modf)*180/3.142

printf("The Angle of polarization at given location is %.2f degrees",E(3))



// Note : cross() function did not work, so i have wrote mycross() function. Answers would be differ because of rounding error.
