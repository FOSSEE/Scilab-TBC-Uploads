//to determine the reduction of flux/pole due to armature rxn

clc;
V=250;
R_a=.7;
function [phi]=arxn(I_a,n)
    phi=(V-I_a*R_a)/n;
endfunction

phinl=arxn(1.6,1250);
disp(phinl,'flux/pole no load');

phil=arxn(40,1150);
disp(phil,'flux/pole load');

d=(phinl-phil)*100/phinl;
disp(d,'reduction in phi due to armature rxn(%)');
