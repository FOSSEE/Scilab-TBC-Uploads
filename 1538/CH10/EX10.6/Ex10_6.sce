//example-10.6
//page no-323
//given
//diameter  of circular section of bean
d=60  //mm
//length of circular section of beam
l=500  //mm
//maximum and minimum load 
Pmin= 20  //kN
Pmax= 50  //kN
//ultimate strength
sigmau=650  //MPa
//yoeld strength
sigmay=520  //MPa
//factor of safety
fos=1.8
//maximum bending moment
Mmax=Pmax*l/4  //kN mm
//minimum bending moment
Mmin=Pmin*l/4  //kN mm
//mean bending moment
Mm=(Mmax+Mmin)/2  //kN mm
//alerting (variable) bending moment
Ma=(Mmax-Mmin)/2  //kN mm
//section modulus of beam
Z=(%pi)*d^3/32  //mm^3
//mean bending stress
sigmam=Mm/Z*1000  //MPa
//variable bending stress
sigmaa=Ma/Z*1000    //MPa
//endurance stress from
//(i) gerber's parabolic relation
sigmae1=sigmaa/[1/fos-(sigmam/sigmau)^2*fos]  //MPa
//(ii) goodman's straight line relation
sigmae2=sigmaa/[1/fos-sigmam/sigmau]  //MPa
//(iii) soderberg's straight line realtion
sigmae3=sigmaa/[1/fos-sigmam/sigmay]  //MPa
printf ("sndurance strength of the material are \n Gerbers parabolic fomula %f MPa\n, goodmans straight line formula %f MPa\n and sodergerbs straight line relation %f MPa ",sigmae1,sigmae2,sigmae3)
