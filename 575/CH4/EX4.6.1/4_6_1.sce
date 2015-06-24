clc
pathname=get_absolute_file_path('4_6_1.sce')
filename=pathname+filesep()+'461.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
nP=basis*xP
nN=basis*xN
nO2=basis*xA*0.21
if(nN/nP>1)
    disp("NH3 is in excess")
else
    disp("Propene is in excess")
end
if(nO2/nP>1)
    disp("O2 is in excess")
else
    disp("propene is in excess")
end
nO2reacted=nP*1.5
nNreacted=nP*1
ExcessAmmonia=(nN-nNreacted)*100/nNreacted
ExcessO2=(nO2-nO2reacted)*100/nO2reacted
printf(" \n percentage excess Ammonia=%f",ExcessAmmonia)
printf(" \n percentage excess Oxygen=%f",ExcessO2)
nPout=(1-x)*nP
printf(" \n no.of moles of Propylene left= %d mol",nPout)
E=nP-nPout
nNout=nN-E
nO2out=nO2-1.5*E
nAc=E
nW=3*E
printf(" \n no.of moles of Ammonia left= %f mol",nNout)
printf(" \n no.of moles of oxygen left= %f mol",nO2out)
printf(" \n no.of moles of ACN formed= %d mol",nAc)
printf(" \n no.of moles of water formed= %d mol",nW)