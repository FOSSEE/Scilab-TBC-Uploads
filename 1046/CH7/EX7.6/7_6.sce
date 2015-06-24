//Example 7.6
//Calculate the fraction of radiation emitted by the surface.
ri=5         //cm ,inside radius  of ring
w=3          //cm, width
ro=ri+w      //cm, outside radius 
L=20         //cm, surface distance

//view factor along surface dA1-A2
F1=2*integrate('20^2*r/(20^2+r^2)^2','r',0,ri)
//view factor along surface dA1-A2"
F2=2*integrate('20^2*r/(20^2+r^2)^2','r',ri,ro)
printf("fraction of radiation passes through hole  %f \n",F1)
printf("fraction of radiation intercepted by the ring %f ",F2)


































