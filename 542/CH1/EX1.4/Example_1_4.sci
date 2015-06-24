//minimum size of the particle in the mixture of quartz and galena(mm)
clear all;
clc;
printf("\n Example 1.4");

//maximum size of the particle(mm)
d_max=0.065;
//minimum size of the particle(mm)
d_min=0.015;
//density of quartz(kg/m^3)
p_quartz=2650;
//density of galena (kg/m^3)
p_galena=7500;
//minimum density of the particle which will give this seperation
//When stoke's law is applied the required density is as given below
function[d]=stoke_required_density()
    p=poly([0],'p');
    d=roots((p-7500)-(p-2650)*(d_max/d_min)^2);
    funcprot(0);
endfunction
d=stoke_required_density();
printf("\n required density is = %d kg/m^3",d);
//When Newton's law is applied then the required density is as given below
function[e]=newton_required_density()
    r=poly([0],'r');
    e=roots((r-7500)-(r-2650)*(d_max/d_min));
    funcprot(0);
endfunction
e=newton_required_density();
printf("\nrequired density is by newton law =%d kg/m^3",e);