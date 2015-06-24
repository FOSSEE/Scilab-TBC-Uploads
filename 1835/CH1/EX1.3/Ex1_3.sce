//CHAPTER 1 ILLUSRTATION 3 PAGE NO 16
//TITLE:Basic kinematics
//Figure 1.16
clc
clear
OB=54.6//               distance between the fixed centres in mm
OA=85//                 length of driving crank in mm
OA2=OA
CA=160//                length of slotted lever in mm
CD=144//                length of connectin rod in mm
//================================
beeta=2*(acosd(OB/OA2))//        angle through which crank turns inreturn stroke in degrees
A=(360-beeta)/beeta//             ratio of time of cutting stroke to the time of return stroke 
printf('Ratio of time taken on the cutting to the return stroke= %.0f',A)
