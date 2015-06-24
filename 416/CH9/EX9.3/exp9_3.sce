clear
clc
disp("example 9.3")
hm=2.0141
hp=1.007825
hn=1.008665
nm=58.9342
np=28
nn=59
um=235.0439
up=92
un=235
hmd=hp+hn-hm;nmd=np*hp+(nn-np)*hn-nm;umd=up*hp+(un-up)*hn-um;
hbe=931*hmd;nbe=931*nmd;ube=931*umd;
ahbe=hbe/2;anbe=nbe/nn;aube=ube/un;
printf("\t(a)\n mass defect is for hydrogen %famu \n total binding energy for hydrogens %fMev \n average binding energy for hydrogen is %fMeV",hmd,hbe,ahbe)
printf("\n\t(b)\n mass defect is for nickel %famu \n total binding energy for nickel is %fMev \n average binding energy for nickelis %fMeV",nmd,nbe,anbe)
printf("\n\t(c)\n mass defect of uranium is %famu \n total binding energy uranium is %fMev \n average binding energy uranium is %fMeV",umd,ube,aube)