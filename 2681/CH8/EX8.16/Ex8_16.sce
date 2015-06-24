//HPBW NNBW directivity
//given
clc
lemda=1//as value of lemda do not effect the expression
for(lemda!= 0)
Da=7*lemda//aperture diameter
NNBW=140*(lemda/Da)//degree
HPBW=70*(lemda/Da)//degree
D=6.4*(Da/lemda)^2//directivity
end
disp(D,NNBW,HPBW,'the half power beamwidth and  beamwidth between first null and the directivity in degrees and decibles')//degree,db
