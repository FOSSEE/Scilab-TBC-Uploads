clc

p=15
P=45
a=3
b=1.5
L1=3
L2=4.5
MfAB=-(p*L1^2)/12
disp(MfAB,"in kNm is= ")
MfBA=(11.25)
disp(MfBA,"in kNm is= ")
MfBC=-(P*a*b^2)/L2^2
disp(MfBC,"in kNm is= ")
MfCB=(P*b*a^2)/L2^2
disp(MfCB,"in kNm is= ")
B=MfBA+MfBC
disp(B,"effective fem at joint B in kNm is= ")
AB=0.429*-B    //                      joint rotates until a change in moment is +3.75
disp(AB,"the change of moment in beam segment AB in kN is=")
BC=0.571*-B
disp(BC,"the change of moment in beam segment AB in kN is=")
