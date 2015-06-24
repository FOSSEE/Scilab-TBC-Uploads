R=20
L=2
C=1/25

//at t=0-
iR=-4
iL=4
iC=0
vR=-R*4
vC=-vR
vL=0

disp(iR,iL,iC,vR,vL,vC)

//at t=0+
iL=iL
vC=vC
iR=5-4  //KCL at node 1
vR=R*iR
iC=4+iR  //KCL at node 2
vL=vC+vR  //KVL inner mesh

disp(iR,iL,iC,vR,vL,vC)


//at t=0+ derivatives are
DiL=vL/L
DvC=iC/C
DiR=-DiL        //Differentiating KCL at node 1
DiC=DiR         //Differentiating KCL at node 2
DvR=R*DiR
DvL=DvR+DvC        //Differentiating KVL inner mesh

disp(DiR,DiL,DiC,DvR,DvL,DvC)