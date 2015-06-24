clc
//Chapter3: Modulation
//Example3.14 page no 157
//Given
//e=Ec(1+0.4cos(2pie3*t))*sin(2pie7*t)
fm=1000//modulating s/g freq
deltaTheta=2*atan(0.4)//peak phase deviation

deltaF=deltaTheta*fm//Peak freq deviation

Ec=1
Er=sqrt((Ec^2)*(1+(0.4^2)))
m=(Er-Ec)/Ec//depth of residual AM 

AMFr=2*fm// freq ofresidual AM
mprintf('Peak Phase Deviation: %f rad\nPeak Freq Deviation: %d Hz\nDepth of residual AM: %f\nResidual AM freq:%d kHz',deltaTheta,deltaF,(round(m*100)/100),AMFr*1e-3)
