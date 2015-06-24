clc,clear
//Example 1.17
//To find the diameter of larger roller

//since radius perpendicular to tangent
angle_ODA=90;
angle_PEC=90
angle_OAD=37 ;//by symmetry
ED=1.38 ;//given
//since DOA is right triangle, DOA and OAD are complementary angles
angle_DOA=90 - angle_OAD ;

//since radius perpendicular to tangent
angle_OBC=90;
angle_PBC=90;

//since ODA and ODC are right triangle,
//OD = OB as radius and BC=DC by pythagoras
//OBC and ODC are now congruent
//angle_BOC = angle_DOC
//angle_BOC + angle_DOC =(90-angle_OAD)
angle_BOC= (90-angle_OAD)/2;
angle_DOC= (90-angle_OAD)/2;

//BP=EP as radius
//since radius perpendicular to tangent
angle_PBC=90;
angle_PEC=90;
//Thus,BPC and EPC are congruent triangles
//Therefore,BC=DC and BC+DC = ED
BC = ED /2;
DC = ED /2;
OB = BC / tand(angle_BOC); //radius of large roller
diameter= 2* OB ;
printf('Diameter of larger roller = %.3f units',diameter)
