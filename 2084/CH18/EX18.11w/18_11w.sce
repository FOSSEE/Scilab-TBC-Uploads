//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.11w
//locating image of a dust particle on the surface of water filled in a concave mirror as observed from top

//given data
R=-40; //radius of curvature(in cm) of the concave mirror
u=-5; //object distance(in cm) from the concave mirror
mu=1.33; //refractive index of water

//calculation
v=1/((2/R)-(1/u))//mirror formula

if(v>0)
    disp(v,'virtual image is formed due to reflection through concave mirror below surface of mirror at a depth(in cm) of ');
else
    disp(v,'real image is formed due to reflection through concave mirror above surface of mirror at a height(in cm) of ');
end

total_distance=v+(-u);  //water is filled upto height equal to object distance of dust particle P
vfinal=total_distance*(1-1/mu); //snell's law

disp(total_distance-vfinal,'final image is formed below water surface at a distance(in cm)');

