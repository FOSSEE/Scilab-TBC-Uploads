clc
//the following code contains userdefined fucntion complexstring 
function s=complexstring(a)
    
    if imag(a)>=0 then
        s=sprintf('%g+%gi',real(a),imag(a))
    else
        s=sprintf('%g%gi',real(a),imag(a))
        
    end
    funcprot(0)
endfunction
Load=5000 //load of the plant in kW
pf1=0.8 //power factor of load(lagging)
pf2=0.9 //power factor of induction motor
pf3=0.8 //power factor of synchronous motor
Hp=500 //rating of induction motor to be replaced in hp
Pout=0.746*Hp //output power of induction motor in kW
Eta=0.96 //efficiency of the induction motor equal to η in textbook
Sp=Load+(Load*tan(acos(pf1)))*%i //original complex power of load in kVA
disp('Sp=' + complexstring(Sp)+'kVA')
Pin=Pout/Eta //input power in kW
mprintf("Pin=%fkW\n",Pin)//complex power of induction motor //the ans may vary due to round off error
Sm=Pin+(Pin*tan(acos(pf2)))*%i
disp('Sm='+complexstring(Sm)+'kVA')//the ans may vary due to round off error //complex power of induction motor
mprintf("\n")
Ss=Pin-(Pin*tan(acos(pf3)))*%i
disp('Ss='+complexstring(Ss)+'kVA')//complex power of synchronous machine //the ans may vary due to round off error
mprintf("\n")
Qm=(Pin*tan(acos(pf2)))*%i//reactive power of induction motor in kVAR
Qs=(-1*(Pin*tan(acos(pf3)))*%i)//reactive power of synchronous motor in kVAR
Sp1=Sp-Qm+Qs
disp('Sp1='+complexstring(Sp1)+'kVA')//new plant requirement,equal to Sp` in textbook
mprintf("\n")
pha=acos(real(Sp1)/abs(Sp1)) //phase angle of Sp1 in radians
mprintf("New power factor=%f\n",cos(pha))//new power factor //the ans may vary due to round off error
invl=abs(Sp)//initial value of complex power in kVA
fnvl=abs(Sp1) //final value of complex power in kVA 
mprintf("Percent reduction=%f%c\n",(((invl-fnvl)/invl)*100),'%')//the ans may vary due to round off error










