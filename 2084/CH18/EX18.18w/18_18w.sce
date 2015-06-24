//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.18w
//calculation of position of image due to refraction at the first surface and position of final image

//given data1
//u=infinite    object distance (in cm)
R=2; //radius of curvature of the spherical convex surface (in mm)
mu1=1.33; //refractive index of the medium from which light beam is entering
mu2=1; //refractive index of the medium of spherical air bubble
nR=-2; //radius of curvature of the spherical convex surface (in mm)
nmu1=1; //refractive index of the medium in which previous image is formed
nmu2=1.33; //refractive index of the medium from which light beam is entering

//calculation
v=R/(mu2-mu1) //formula for refraction at spherical surface for object at infinite distance
nu=-(-v+-(2*nR))

if(v<0)
    disp(-v,'virtual image is formed on the same side of water at a distance(in mm) of');
 else
     disp(v,'real image is formed on the other side of water at a distance(in mm) of');
end

nv=nmu2/((nmu2-nmu1)/nR+(nmu1/nu)) //formula for refraction at spherical surface

if(nv<0)
    disp(-nv,'final image is formed on the same side of air at a distance(in mm) of');
 else
     disp(nv,'final image is formed on the other side of air at a distance(in mm) of');
end

disp(-v+R,'from the centre first image is formed on the side from which incident rays are coming at a distance(in mm) of ');
disp(-nv+nR,'from the centre second image is formed on the side from which incident rays are coming at a distance(in mm) of ');
