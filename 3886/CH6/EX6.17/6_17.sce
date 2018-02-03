//single purchase crab
//load drum radius
r=200/2  //mm
//Length of lever arm
R=1200  //mm
T2=100
T1=10
VR=(R*T2)/(r*T1)
//let the law of machine be P=m*W+C
//in first case  100=m*3000+C
//in second case  160=m*9000+C
//solving we get
m=1/100
C=70
//P=0.01*W+70
//case 1
MA1=3000/100
eta1=MA1*100/VR  //percent
//case 2
MA2=9000/160
eta2=MA2*100/VR  //percent
printf("\nVR=%.0f\nP=0.01*W+70\nIn first case\neta=%0.2f percent\nIn second case\neta=%0.2f percent",VR,eta1,eta2)
  
