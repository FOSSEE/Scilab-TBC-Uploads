//fiber optic communications by joseph c. palais
//example 8.6
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc
clear all
NA1=0.24//numerical aperture SI fiber 1 ALl glass
NA2=0.41//numerical aperture SI fiber 2 PCS
NA3=0.48//numerical aperture SI fiber 3 All plastic
NA_loss1=-10*log10(NA1^2)//losses SI fiber 1
NA_loss2=-10*log10(NA2^2)//losses SI fiber 2
NA_loss3=-10*log10(NA3^2)//losses SI fiber 3
ref_loss=0.2//Reflection_loss in dB
total_loss1=NA_loss1+ref_loss//Total Loss in dB
mprintf('Total Loss SI fiber 1=%fdB',total_loss1)
total_loss2=NA_loss2+ref_loss
mprintf('\nTotal Loss SI fiber 2=%fdB',total_loss2)
total_loss3=NA_loss3+ref_loss
mprintf('\nTotal Loss SI fiber 3=%fdB',total_loss3)
