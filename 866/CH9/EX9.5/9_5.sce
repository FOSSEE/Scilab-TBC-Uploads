clc
//initialisation of variables
BeamB= 200 //mm
BeamH= 200 //mm
BeamT= 20 //mm
BeamT2= 20 //mm
sigmaxtop= 150 //N/mm^2
sigmaxbottom= -150 //N/mm^2
//CALCULATIONS
y= ((BeamB*BeamT*BeamT/2)+(BeamH*BeamT2*((BeamH/2)+BeamT)))/(BeamB*BeamT+BeamH*BeamT2)
Iz= ((BeamB*(y^3))/3)-(((BeamB-BeamT2)*(y-BeamT)^3)/3)+(BeamT2*((BeamH+BeamT-y)^3)/3)
P1= sigmaxtop/((1/(BeamB*BeamT+BeamH*BeamT2))+((y-BeamT/2)*y/Iz))  
P2= (sigmaxbottom/((1/(BeamB*BeamT+BeamH*BeamT2))+((y-BeamT/2)*(-(BeamH+BeamT-y))/Iz)))
if(P1>P2)
    disp(P2)
else
    disp(P1) 
end
